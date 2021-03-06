﻿using System;
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
    public class ZuccherisController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();

        // GET: Zuccheris
        /// <summary>
        /// Metodo invocato alla richiesta di Zuccheris
        /// Setta nella variabile speciale ViewBag l'utente loggato e restituisce 
        /// alla view  una lista di zuccheri
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(_db.Zuccheri.ToList());
        }

        // GET: Zuccheris/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli su uno zucchero
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Zuccheris</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error);
            }
            Zuccheri zuccheri = _db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // GET: Zuccheris/Create
        /// <summary>
        /// Metodo invocato alla creazione di un nuovo zucchero
        /// Assegna uno user lo zucchero con i campi da compilare nella view
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            Zuccheri z = new Zuccheri {UserId = User.Identity.GetUserId()};
            return View(z);
        }

        // POST: Zuccheris/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di uno Zuccheris
        /// Se il modello è valido, crea e aggiunge lo zucchero al database
        /// </summary>
        /// <param name="zuccheri">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Zuccheri zuccheri)
        {
            if (ModelState.IsValid)
            {
                _db.Zuccheri.Add(zuccheri);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(zuccheri);
        }

        // GET: Zuccheris/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di un nuovo zucchero
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del Zuccheris trovato
        /// <param name="id">Valore della chiave per il model Zuccheris</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zuccheri zuccheri = _db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // POST: Zuccheris/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di uno zucchero 
        /// Se il modello è valido sostituisce nelle database lo zucchero con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="zuccheri">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Zuccheri zuccheri)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(zuccheri).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zuccheri);
        }

        // GET: Zuccheris/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di uno zucchero
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista dello zucchero trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Zuccheris</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error2);
            }
            Zuccheri zuccheri = _db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // POST: Zuccheris/Delete/5
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di uno zucchero
        /// Se il modello è valido rimuove nel database lo zucchero e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave dello zucchero da eliminare</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Zuccheri zuccheri = _db.Zuccheri.Find(id);
            _db.Zuccheri.Remove(zuccheri ?? throw new InvalidOperationException());
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
    }
}