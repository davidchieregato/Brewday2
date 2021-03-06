﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BrewDay2.App_Start;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class RicetteController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();

        // GET: Ricette
        /// <summary>
        /// Metodo invocato alla richiesta di Ricette
        /// Ritorna la vista delle ricette
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View(_db.Ricette.ToList());
        }

        /// <summary>
        /// Metodo invocato alla richiesta di visualizzazione delle mie ricette
        /// Ritorna la vista
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult MyRecipes()
        {
            var me = User.Identity.GetUserId();
            var daRestituire = _db.Ricette.Where(x => x.UserId == me);
            return View(daRestituire);
        }

        /// <summary>
        /// Metodo invocato alla richiesta di una categoria di ricette
        /// Se il parametro passato corrisponde ad una categoria mostra le ricette che le appartengono
        /// </summary>
        /// <param name="nomeparametro">Nome della categoria da visualizzare</param>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        public ActionResult Index(String nomeparametro)
        {
            if (nomeparametro == "myReceipe")
            {
                var me = User.Identity.GetUserId();
                var daRestituire = _db.Ricette.Where(x => x.UserId == me);
                return View(daRestituire);
            }
            else if (User.Identity.IsAuthenticated)
            {
                var me = User.Identity.GetUserId();
                var lista = !String.IsNullOrEmpty(nomeparametro)
                    ? _db.Ricette.Where(x =>
                            x.Categoria == nomeparametro &&
                            (x.Privata == false || x.UserId ==me))
                        .ToList()
                    : _db.Ricette.Where(x => (x.Privata == false || x.UserId ==me)).ToList();

                return View(lista);
            }
            else
            {
                if(nomeparametro!=null)
                return View(_db.Ricette.Where(x =>x.Categoria == nomeparametro &&(x.Privata == false)).ToList());
                else
                    return View(_db.Ricette.Where(x =>(x.Privata == false)).ToList());
            }
        }

        // GET: Ricette/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli delle ricette
        /// Restituisce errore se id è nullo o non esiste
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per il model Ricette</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = _db.Ricette.FirstOrDefault(x => x.RicettaId == id);
            if (ricette?.Privata == true && ricette.UserId != User.Identity.GetUserId())
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            ricette.Additivis = _db.AdditiviRicettas.Where(x => x.RicettaId == id).Select(x => x.Additivo).ToList();
            ricette.Lievitis = _db.LievitiRicettas.Where(x => x.RicettaId == id).Select(x => x.Lievito).ToList();
            ricette.Luppolis = _db.LuppoliRicettas.Where(x => x.RicettaId == id).Select(x => x.Luppolo).ToList();
            ricette.Maltis = _db.MaltiRicettas.Where(x => x.RicettaId == id).Select(x => x.Malto).ToList();
            ricette.Zuccheris = _db.ZuccheriRicettas.Where(x => x.RicettaId == id).Select(x => x.Zucchero).ToList();
            if (ricette == null)
            {
                return HttpNotFound();
            }
            ViewBag.user = _db.Users.FirstOrDefault(x => x.Id == ricette.UserId)?.Email;
            return View(ricette);
        }

        // GET: Ricette/Create
        // questo metodo permette di scegliere la rispettiva categoria di una ricetta
        public ActionResult Create()
        {
            SelectList sl = new SelectList(_db.CategoriaBirres,"Nome","Nome");
            ViewBag.categorie = sl;
            return View();
        }

        //funzionalità what should I brew Today, suggerisce quale birra preparare in base a ciò che è presente in magazzino
        public ActionResult WhatShoudIBrewToday()
        {
            var me = User.Identity.GetUserId();
            List<Ricette> additivi = new List<Ricette>();
            List<Ricette> luppoli = new List<Ricette>();
            List<Ricette> lieviti = new List<Ricette>();
            List<Ricette> malti = new List<Ricette>();
            List<Ricette> zuccheri = new List<Ricette>();
            Magazzino m = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me);

            List<Additivi> a = new List<Additivi>();
            if (m?.AdditiviUtente != null)
                foreach (var additiviMagazzino in m.AdditiviUtente)
                {
                    a.Add(_db.Additivi.FirstOrDefault(x => x.AdditiviId == additiviMagazzino.AdditiviId));
                }
            foreach (var ricette in _db.Ricette.Where(x => x.Privata == false || x.UserId == me))
            {
                if (a.All(x => ricette.Additivis.Contains(x)))
                {
                    additivi.Add(ricette);
                }
            }

            List<Luppoli> l = new List<Luppoli>();
            if (m != null)
            {
                foreach (var additiviMagazzino in m.LuppoliUtente)
                {
                    l.Add(_db.Luppoli.FirstOrDefault(x => x.LuppoliId == additiviMagazzino.LuppoliId));
                }
                foreach (var ricette in _db.Ricette.Where(x => x.Privata == false || x.UserId == me))
                {
                    if (l.All(x => ricette.Luppolis.Contains(x)))
                    {
                        luppoli.Add(ricette);
                    }
                }

                List<Lieviti> li = new List<Lieviti>();
                foreach (var additiviMagazzino in m.LievitiUtente)
                {
                    li.Add(_db.Lieviti.FirstOrDefault(x => x.LievitiId == additiviMagazzino.LievitiId));
                }
                foreach (var ricette in _db.Ricette.Where(x => x.Privata == false || x.UserId == me))
                {
                    if (li.All(x => ricette.Lievitis.Contains(x)))
                    {
                        lieviti.Add(ricette);
                    }
                }

                List<Malti> ma = new List<Malti>();
                foreach (var additiviMagazzino in m.MaltiUtente)
                {
                    ma.Add(_db.Malti.Where(x => x.MaltiId == additiviMagazzino.MaltiId).FirstOrDefault());
                }
                foreach (var ricette in _db.Ricette.Where(x => x.Privata == false || x.UserId == me))
                {
                    if (ma.All(x => ricette.Maltis.Contains(x)))
                    {
                        malti.Add(ricette);
                    }
                }

                List<Zuccheri> z = new List<Zuccheri>();
                foreach (var additiviMagazzino in m.ZuccheriUtente)
                {
                    z.Add(_db.Zuccheri.Where(x => x.ZuccheriId == additiviMagazzino.ZuccheriId).FirstOrDefault());
                }
                foreach (var ricette in _db.Ricette.Where(x=>x.Privata == false || x.UserId == me))
                {
                    if (z.All(x => ricette.Zuccheris.Contains(x)))
                    {
                        zuccheri.Add(ricette);
                    }
                }
            }
            var valide = additivi.Intersect(malti).Intersect(luppoli).Intersect(lieviti).Intersect(zuccheri);
            Random r = new Random();
            var mex = User.Identity.GetUserId();
            if (valide.Count() > 0)
            {
                
                int quale = r.Next(0, valide.Count());
                return RedirectToAction("Details", new {ricetta = valide.ElementAt(quale).RicettaId});
            }
            else if(_db.Ricette.Where(x => x.Privata == false || x.UserId == mex).Count()>0)
            {
                int q = r.Next(0, _db.Ricette.Where(x => x.Privata == false || x.UserId == mex).Count());
                var dove = _db.Ricette.Where(x => x.Privata == false || x.UserId == mex).ToList().ElementAt(q).RicettaId;
                return RedirectToAction("Details", new { id = dove});
            }
            else
            {
                return Redirect("/Ricette/Nessuna");
            }
        }
        // POST: Ricette/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di una Ricetta 
        /// Se il modello è valido, crea e aggiunge la ricetta al database
        /// Ritorna la vista
        /// </summary>
        /// <param name="ricette">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Ricette ricette)
        {
            ricette.UserId = User.Identity.GetUserId();
            if (ModelState.IsValid)
            {
                _db.Ricette.Add(ricette);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ricette);
        }

        // GET: Ricette/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di una ricetta
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista della ricetta trovato
        /// <param name="id">Valore della chiave per il model Ricette</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = _db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            SelectList sl = new SelectList(_db.CategoriaBirres, "Nome", "Nome");
            ViewBag.categorie = sl;
            return View(ricette);
        }

        // POST: Ricette/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di una ricetta 
        /// Se il modello è valido sostituisce nel database la ricetta con quella modificata, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="ricette">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Ricette ricette)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(ricette).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ricette);
        }

        // GET: Ricette/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di una ricetta
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista della ricetta trovata
        /// </summary>
        /// <param name="id">Valore della chiave per il model Ricette</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error2);
            }
            Ricette ricette = _db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // POST: Ricette/Delete/5
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di una ricetta 
        /// Se il modello è valido rimuove nel database la ricetta e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave della ricetta da eliminare</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ricette ricette = _db.Ricette.Find(id);
            _db.Ricette.Remove(ricette);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }

        /// <summary>
        /// Metodo invocato alla aggiunta di un additivo alla ricetta
        /// Crea un nuovo additivo e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per l'additivo da aggiungere</param>
        /// <returns></returns>
        public ActionResult AggiungiAdditivo(int id)
        {
            AdditiviRicetta ar = new AdditiviRicetta { RicettaId = id };
            var additivinonusati =
                _db.Additivi.Except(_db.AdditiviRicettas.Where(x => x.RicettaId == id).Select(x => x.Additivo));
            SelectList AdditiviId = new SelectList(additivinonusati, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunta di un additivo alla ricetta 
        /// Se il modello è valido aggiunge nel database l'additivo e salva i cambiamenti
        /// Crea un nuovo additivo e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="ar">Additivo da aggiungere alla ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiAdditivo(AdditiviRicetta ar)
        {
            if (ModelState.IsValid)
            {
                _db.AdditiviRicettas.Add(ar);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var additivinonusati =
                _db.Additivi.Except(_db.AdditiviRicettas.Where(x => x.RicettaId == ar.RicettaId).Select(x => x.Additivo));
            SelectList AdditiviId = new SelectList(additivinonusati, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla aggiunta di un lievito alla ricetta
        /// Crea un nuovo lievito e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per il lievito da aggiungere</param>
        /// <returns></returns>
        public ActionResult AggiungiLievito(int id)
        {
            LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            var daEscludere = _db.LievitiRicettas.Where(x => x.RicettaId == id).Select(x=>x.Lievito);
            var lievitinonusati =
                _db.Lieviti.Except(daEscludere);
            SelectList LievitiId = new SelectList(lievitinonusati, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunta di un lievito alla ricetta 
        /// Se il modello è valido aggiunge nel database il lievito e salva i cambiamenti
        /// Crea un nuovo lievito e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="lr">Lievito da aggiungere alla ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiLievito(LievitiRicetta lr)
        {
            if (ModelState.IsValid)
            {
                _db.LievitiRicettas.Add(lr);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            //LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            var lievitinonusati =
                _db.Lieviti.Except(_db.LievitiRicettas.Where(x => x.RicettaId == lr.RicettaId).Select(x => x.Lievito));
            SelectList LievitiId = new SelectList(lievitinonusati, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla aggiunta di un luppolo alla ricetta
        /// Crea un nuovo luppolo e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per il luppolo da aggiungere</param>
        /// <returns></returns>
        public ActionResult AggiungiLuppolo(int id)
        {
            LuppoliRicetta lr = new LuppoliRicetta { RicettaId = id };
            var luppolinonusati =
                _db.Luppoli.Except(_db.LuppoliRicettas.Where(x => x.RicettaId == id).Select(x => x.Luppolo));
            SelectList LuppoliId = new SelectList(luppolinonusati, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunta di un luppolo alla ricetta 
        /// Se il modello è valido aggiunge nel database il luppolo e salva i cambiamenti
        /// Crea un nuovo luppolo e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="lr">Luppolo da aggiungere alla ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiLuppolo(LuppoliRicetta lr)
        {
            if (ModelState.IsValid)
            {
                _db.LuppoliRicettas.Add(lr);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var luppolinonusati =
                _db.Luppoli.Except(_db.LuppoliRicettas.Where(x => x.RicettaId == lr.RicettaId).Select(x => x.Luppolo));
            SelectList LuppoliId = new SelectList(luppolinonusati, "AdditiviId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla aggiunta di un malto alla ricetta
        /// Crea un nuovo malto e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per il malto da aggiungere</param>
        /// <returns></returns>
        public ActionResult AggiungiMalti(int id)
        {
            MaltiRicetta mr = new MaltiRicetta { RicettaId = id };
            var maltinonusati =
                _db.Malti.Except(_db.MaltiRicettas.Where(x => x.RicettaId == id).Select(x => x.Malto));
            SelectList MaltiId = new SelectList(maltinonusati, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunta di un malto alla ricetta 
        /// Se il modello è valido aggiunge nel database il malto e salva i cambiamenti
        /// Crea un nuovo malto e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="mr">Malto da aggiungere alla ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiMalti(MaltiRicetta mr)
        {
            if (ModelState.IsValid)
            {
                _db.MaltiRicettas.Add(mr);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var maltinonusati =
                _db.Malti.Except(_db.MaltiRicettas.Where(x => x.RicettaId == mr.RicettaId).Select(x => x.Malto));
            SelectList MaltiId = new SelectList(maltinonusati, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }
        
        /// <summary>
        /// Metodo invocato alla aggiunta di uno zucchero alla ricetta
        /// Crea un nuovo zucchero e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave per lo zucchero da aggiungere</param>
        /// <returns></returns>
        public ActionResult AggiungiZuccheri(int id)
        {
            ZuccheriRicetta zr = new ZuccheriRicetta { RicettaId = id };
            var zuccherinonusati =
                _db.Zuccheri.Except(_db.ZuccheriRicettas.Where(x => x.RicettaId == id).Select(x => x.Zucchero));
            SelectList ZuccheriId = new SelectList(zuccherinonusati, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunta di uno zucchero alla ricetta 
        /// Se il modello è valido aggiunge nel database lo zucchero e salva i cambiamenti
        /// Crea un nuovo zucchero e lo assegna alla variabile speciale ViewBag
        /// Ritorna la vista
        /// </summary>
        /// <param name="zr">Zucchero da aggiungere alla ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiZuccheri(ZuccheriRicetta zr)
        {
            if (ModelState.IsValid)
            {
                _db.ZuccheriRicettas.Add(zr);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var zuccherinonusati =
                _db.Zuccheri.Except(_db.ZuccheriRicettas.Where(x => x.RicettaId == zr.RicettaId).Select(x => x.Zucchero));
            SelectList ZuccheriId = new SelectList(zuccherinonusati, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un additivo nella ricetta
        /// Cerca nel database l'additivo e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID dell'additivo da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditAdditivo(int id, int idr)
        {
            AdditiviRicetta ar = _db.AdditiviRicettas.FirstOrDefault(x => x.AdditiviId == id && x.RicettaId == idr);
            //SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome")
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un additivo nella ricetta
        /// Cerca nel database l'additivo e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag l'additivo modificato e ne ritorna la vista
        /// </summary>
        /// <param name="ar">Additivo da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditAdditivo(AdditiviRicetta ar)
        {
            AdditiviRicetta ar2 = _db.AdditiviRicettas.FirstOrDefault(x => x.AdditiviId == ar.AdditiviId && x.RicettaId == ar.RicettaId);
            ar2.Quantita = ar.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Details",new {id = ar2.RicettaId});
            }
            SelectList AdditiviId = new SelectList(_db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un lievito nella ricetta
        /// Cerca nel database il lievito e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del lievito da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditLievito(int id, int idr)
        {
            LievitiRicetta lr = _db.LievitiRicettas.FirstOrDefault(x => x.LievitiId == id && x.RicettaId == idr);
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un lievito nella ricetta
        /// Cerca nel database il lievito e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il lievito modificato e ne ritorna la vista
        /// </summary>
        /// <param name="lr">Lievito da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditLievito(LievitiRicetta lr)
        {
            LievitiRicetta lr2 = _db.LievitiRicettas.FirstOrDefault(x => x.LievitiId == lr.LievitiId && x.RicettaId == lr.RicettaId);
            lr2.Quantita = lr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Details",new {id = lr2.RicettaId});
            }
            //LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            SelectList LievitiId = new SelectList(_db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un luppolo nella ricetta
        /// Cerca nel database il luppolo e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del luppolo da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditLuppolo(int id, int idr)
        {
            LuppoliRicetta lr = _db.LuppoliRicettas.FirstOrDefault(x => x.LuppoliId == id && x.RicettaId == idr);
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un luppolo nella ricetta
        /// Cerca nel database il luppolo e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il luppolo modificato e ne ritorna la vista
        /// </summary>
        /// <param name="lr">Luppolo da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditLuppolo(LuppoliRicetta lr)
        {
            LuppoliRicetta lr2 = _db.LuppoliRicettas.FirstOrDefault(x => x.LuppoliId == lr.LuppoliId && x.RicettaId == lr.RicettaId);
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Details",new {id=lr2.RicettaId});
            }
            SelectList LuppoliId = new SelectList(_db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un malto nella ricetta
        /// Cerca nel database il malto e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del malto da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditMalti(int id, int idr)
        {
            MaltiRicetta mr = _db.MaltiRicettas.FirstOrDefault(x => x.MaltiId == id && x.RicettaId == idr);
            return View(mr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un malto nella ricetta
        /// Cerca nel database il malto e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il malto modificato e ne ritorna la vista
        /// </summary>
        /// <param name="mr">Malto da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditMalti(MaltiRicetta mr)
        {
            MaltiRicetta mr2 = _db.MaltiRicettas.FirstOrDefault(x => x.MaltiId == mr.MaltiId && x.RicettaId == mr.RicettaId);
            mr2.Quantita = mr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Details",new {id=mr2.RicettaId});
            }
            SelectList MaltiId = new SelectList(_db.Malti, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di uno zucchero nella ricetta
        /// Cerca nel database lo zucchero e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID dello zucchero da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditZuccheri(int id, int idr)
        {
            ZuccheriRicetta zr = _db.ZuccheriRicettas.FirstOrDefault(x => x.RicettaId == idr && x.ZuccheriId == id);
            return View(zr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di uno zucchero nella ricetta
        /// Cerca nel database lo zucchero e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag lo zucchero modificato e ne ritorna la vista
        /// </summary>
        /// <param name="zr">Zucchero da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditZuccheri(ZuccheriRicetta zr, int idr)
        {
            ZuccheriRicetta zr2 = _db.ZuccheriRicettas.FirstOrDefault(x => x.ZuccheriId == zr.ZuccheriId && x.RicettaId == idr);
            zr2.Quantita = zr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Details",new {id=zr2.RicettaId});
            }
            SelectList ZuccheriId = new SelectList(_db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }

        public ActionResult DetailsAdditivo(int id, int idr)
        {
            return RedirectToAction("Details", "Additivi", new {id = id});
        }

        public ActionResult DeleteAdditivo(int id, int idr)
        {
            var daRimuovere = _db.AdditiviRicettas
                .FirstOrDefault(x => x.RicettaId == idr && x.AdditiviId == id);
            _db.AdditiviRicettas.Remove(daRimuovere);
            _db.SaveChanges();
            return RedirectToAction("Details", new {id = idr});
        }
        public ActionResult DetailsLievito(int id, int idr)
        {
            return RedirectToAction("Details", "Lievitis", new { id = id });
        }

        public ActionResult DeleteLievito(int id, int idr)
        {
            var daRimuovere = _db.LievitiRicettas
                .FirstOrDefault(x => x.RicettaId == idr && x.LievitiId == id);
            _db.LievitiRicettas.Remove(daRimuovere);
            _db.SaveChanges();
            return RedirectToAction("Details", new { id = idr });
        }
        public ActionResult DetailsLuppolo(int id, int idr)
        {
            return RedirectToAction("Details", "Luppoli", new { id = id });
        }

        public ActionResult DeleteLuppolo(int id, int idr)
        {
            var daRimuovere = _db.LuppoliRicettas
                .FirstOrDefault(x => x.RicettaId == idr && x.LuppoliId == id);
            _db.LuppoliRicettas.Remove(daRimuovere);
            _db.SaveChanges();
            return RedirectToAction("Details", new { id = idr });
        }
        public ActionResult DetailsMalto(int id, int idr)
        {
            return RedirectToAction("Details", "Maltis", new { id = id });
        }

        public ActionResult DeleteMalto(int id, int idr)
        {
            var daRimuovere = _db.MaltiRicettas
                .FirstOrDefault(x => x.RicettaId == idr && x.MaltiId == id);
            _db.MaltiRicettas.Remove(daRimuovere);
            _db.SaveChanges();
            return RedirectToAction("Details", new { id = idr });
        }
        public ActionResult DetailsZucchero(int id, int idr)
        {
            return RedirectToAction("Details", "Zuccheris", new { id = id });
        }

        public ActionResult DeleteZucchero(int id, int idr)
        {
            var daRimuovere = _db.ZuccheriRicettas
                .FirstOrDefault(x => x.RicettaId == idr && x.ZuccheriId == id);
            _db.ZuccheriRicettas.Remove(daRimuovere);
            _db.SaveChanges();
            return RedirectToAction("Details", new { id = idr });
        }
    }
}