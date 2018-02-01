using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class RicetteController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Ricette
        public ActionResult Index()
        {
            return View(db.Ricette.ToList());
        }

        public ActionResult MyRecipes()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Index(String nomeparametro)
        {
            List<Ricette> lista = null;
            if (!String.IsNullOrEmpty(nomeparametro))
                lista = db.Ricette.Where(x => x.Categoria == nomeparametro).ToList();
            else
                lista = db.Ricette.ToList();

            return View(lista);
        }

        // GET: Ricette/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // GET: Ricette/Create
        public ActionResult Create()
        {
            SelectList sl = new SelectList(db.CategoriaBirres,"Nome","Nome");
            ViewBag.categorie = sl;
            return View();
        }

        public ActionResult WhatShoudIBrewToday()
        {
            var me = User.Identity.GetUserId();
            List<Ricette> Additivi = new List<Ricette>();
            List<Ricette> Luppoli = new List<Ricette>();
            List<Ricette> Lieviti = new List<Ricette>();
            List<Ricette> Malti = new List<Ricette>();
            List<Ricette> Zuccheri = new List<Ricette>();
            Magazzino m = db.Magazzinoes.Where(x => x.UserId == me).FirstOrDefault();

            List<Additivi> a = new List<Additivi>();
            foreach (var additiviMagazzino in m.AdditiviUtente)
            {
                a.Add(db.Additivi.Where(x=>x.AdditiviId==additiviMagazzino.AdditiviId).FirstOrDefault());
            }
            foreach (var ricette in db.Ricette)
            {
                if (a.All(x => ricette.Additivis.Contains(x)))
                {
                    Additivi.Add(ricette);
                }
            }

            List<Luppoli> l = new List<Luppoli>();
            foreach (var additiviMagazzino in m.LuppoliUtente)
            {
                l.Add(db.Luppoli.Where(x => x.LuppoliId == additiviMagazzino.LuppoliId).FirstOrDefault());
            }
            foreach (var ricette in db.Ricette)
            {
                if (l.All(x => ricette.Luppolis.Contains(x)))
                {
                    Luppoli.Add(ricette);
                }
            }

            List<Lieviti> li = new List<Lieviti>();
            foreach (var additiviMagazzino in m.LievitiUtente)
            {
                li.Add(db.Lieviti.Where(x => x.LievitiId == additiviMagazzino.LievitiId).FirstOrDefault());
            }
            foreach (var ricette in db.Ricette)
            {
                if (li.All(x => ricette.Lievitis.Contains(x)))
                {
                    Lieviti.Add(ricette);
                }
            }

            List<Malti> ma = new List<Malti>();
            foreach (var additiviMagazzino in m.MaltiUtente)
            {
                ma.Add(db.Malti.Where(x => x.MaltiId == additiviMagazzino.MaltiId).FirstOrDefault());
            }
            foreach (var ricette in db.Ricette)
            {
                if (ma.All(x => ricette.Maltis.Contains(x)))
                {
                    Malti.Add(ricette);
                }
            }

            List<Zuccheri> z = new List<Zuccheri>();
            foreach (var additiviMagazzino in m.ZuccheriUtente)
            {
                z.Add(db.Zuccheri.Where(x => x.ZuccheriId == additiviMagazzino.ZuccheriId).FirstOrDefault());
            }
            foreach (var ricette in db.Ricette)
            {
                if (z.All(x => ricette.Zuccheris.Contains(x)))
                {
                    Zuccheri.Add(ricette);
                }
            }
            var valide = Additivi.Intersect(Malti).Intersect(Luppoli).Intersect(Lieviti).Intersect(Zuccheri);
            Random r = new Random();
            int quale = r.Next(0, valide.Count());
            return View(valide.ElementAt(quale));
        }
        // POST: Ricette/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Ricette ricette)
        {
            if (ModelState.IsValid)
            {
                db.Ricette.Add(ricette);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ricette);
        }

        // GET: Ricette/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // POST: Ricette/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Ricette ricette)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ricette).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ricette);
        }

        // GET: Ricette/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // POST: Ricette/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ricette ricette = db.Ricette.Find(id);
            db.Ricette.Remove(ricette);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        public ActionResult AggiungiAdditivo(int id)
        {
            AdditiviRicetta ar = new AdditiviRicetta { RicettaId = id };
            SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        [HttpPost]
        public ActionResult AggiungiAdditivo(AdditiviRicetta ar)
        {
            if (ModelState.IsValid)
            {
                db.AdditiviRicettas.Add(ar);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        public ActionResult AggiungiLievito(int id)
        {
            LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            SelectList LievitiId = new SelectList(db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        [HttpPost]
        public ActionResult AggiungiLievito(LievitiRicetta lr)
        {
            if (ModelState.IsValid)
            {
                db.LievitiRicettas.Add(lr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            SelectList LievitiId = new SelectList(db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        public ActionResult AggiungiLuppolo(int id)
        {
            LuppoliRicetta lr = new LuppoliRicetta { RicettaId = id };
            SelectList LuppoliId = new SelectList(db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        [HttpPost]
        public ActionResult AggiungiLuppolo(LuppoliRicetta lr)
        {
            if (ModelState.IsValid)
            {
                db.LuppoliRicettas.Add(lr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList LuppoliId = new SelectList(db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        public ActionResult AggiungiMalti(int id)
        {
            MaltiRicetta mr = new MaltiRicetta { MaltiId = id };
            SelectList MaltiId = new SelectList(db.Malti, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }

        [HttpPost]
        public ActionResult AggiungiMalti(MaltiRicetta mr)
        {
            if (ModelState.IsValid)
            {
                db.MaltiRicettas.Add(mr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList MaltiId = new SelectList(db.Malti, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }

        public ActionResult AggiungiZuccheri(int id)
        {
            ZuccheriRicetta zr = new ZuccheriRicetta { RicettaId = id };
            SelectList ZuccheriId = new SelectList(db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }

        [HttpPost]
        public ActionResult AggiungiZuccheri(ZuccheriRicetta zr)
        {
            if (ModelState.IsValid)
            {
                db.ZuccheriRicettas.Add(zr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList ZuccheriId = new SelectList(db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }

        public ActionResult EditAdditivo(int id, int idr)
        {
            AdditiviRicetta ar = db.AdditiviRicettas.Where(x => x.AdditiviId == id && x.RicettaId == idr).FirstOrDefault();
            //SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome")
            return View(ar);
        }

        [HttpPost]
        public ActionResult EditAdditivo(AdditiviRicetta ar)
        {
            AdditiviRicetta ar2 = db.AdditiviRicettas.Where(x => x.AdditiviId == ar.AdditiviId && x.RicettaId == ar.RicettaId).FirstOrDefault();
            ar2.Quantita = ar.Quantita;
            if (ModelState.IsValid)
            {
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        public ActionResult EditLievito(int id, int idr)
        {
            LievitiRicetta lr = db.LievitiRicettas.Where(x => x.LievitoId == id && x.RicettaId == idr).FirstOrDefault();
            return View(lr);
        }

        [HttpPost]
        public ActionResult EditLievito(LievitiRicetta lr)
        {
            LievitiRicetta lr2 = db.LievitiRicettas.Where(x => x.LievitoId == lr.LievitoId && x.RicettaId == lr.RicettaId).FirstOrDefault();
            lr2.Quantita = lr.Quantita;
            if (ModelState.IsValid)
            {
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            SelectList LievitiId = new SelectList(db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }

        public ActionResult EditLuppolo(int id, int idr)
        {
            LuppoliRicetta lr = db.LuppoliRicettas.Where(x => x.LuppoliId == id && x.RicettaId == idr).FirstOrDefault();
            return View(lr);
        }

        [HttpPost]
        public ActionResult EditLuppolo(LuppoliRicetta lr)
        {
            LuppoliRicetta lr2 = db.LuppoliRicettas.Where(x => x.LuppoliId == lr.LuppoliId && x.RicettaId == lr.RicettaId).FirstOrDefault();
            if (ModelState.IsValid)
            {
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList LuppoliId = new SelectList(db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }

        public ActionResult EditMalti(int id, int idr)
        {
            MaltiRicetta mr = db.MaltiRicettas.Where(x => x.MaltiId == id && x.RicettaId == idr).FirstOrDefault();
            return View(mr);
        }

        [HttpPost]
        public ActionResult EditMalti(MaltiRicetta mr)
        {
            MaltiRicetta mr2 = db.MaltiRicettas.Where(x => x.MaltiId == mr.MaltiId && x.RicettaId == mr.RicettaId).FirstOrDefault();
            mr2.Quantita = mr.Quantita;
            if (ModelState.IsValid)
            {
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList MaltiId = new SelectList(db.Malti, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }

        public ActionResult EditZuccheri(int id, int idr)
        {
            ZuccheriRicetta zr = db.ZuccheriRicettas.Where(x => x.RicettaId == idr && x.ZuccheriId == id).FirstOrDefault();
            return View(zr);
        }

        [HttpPost]
        public ActionResult EditZuccheri(ZuccheriRicetta zr, int idr)
        {
            ZuccheriRicetta zr2 = db.ZuccheriRicettas.Where(x => x.ZuccheriId == zr.ZuccheriId && x.RicettaId == idr).FirstOrDefault();
            zr2.Quantita = zr.Quantita;
            if (ModelState.IsValid)
            {
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList ZuccheriId = new SelectList(db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }
    }
}