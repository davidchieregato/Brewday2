using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class LuppoliController : Controller
    {
        private readonly ApplicationDbContext db = new ApplicationDbContext();

        // GET: Luppoli
        /// <summary>
        /// Metodo invocato alla richiesta di Luppoli
        /// Setta nella variabile speciale ViewBag l'utente loggato e restituisce 
        /// alla view  una lista di luppoli
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Luppoli.ToList());
        }

        // GET: Luppoli/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli su un luppolo
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Luppoli</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Luppoli luppoli = db.Luppoli.Find(id);
            if (luppoli == null)
            {
                return HttpNotFound();
            }
            return View(luppoli);
        }

        // GET: Luppoli/Create
        /// <summary>
        /// Metodo invocato alla creazione di un nuovo luppolo
        /// Assegna uno user al luppolo con i campi da compilare nella view
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            Luppoli l = new Luppoli();
            l.UserId = User.Identity.GetUserId();
            return View(l);
        }

        // POST: Luppoli/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di un Luppolo nella pagina equivalente
        /// Se il modello è valido, crea e aggiunge il luppolo al database
        /// </summary>
        /// <param name="luppoli">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Luppoli luppoli)
        {
            if (ModelState.IsValid)
            {
                db.Luppoli.Add(luppoli);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(luppoli);
        }

        // GET: Luppoli/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di un nuovo luppolo
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del Luppoli trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Luppoli</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Luppoli luppoli = db.Luppoli.Find(id);
            if (luppoli == null)
            {
                return HttpNotFound();
            }
            return View(luppoli);
        }

        // POST: Luppoli/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un luppolo nella pagina equivalente
        /// Se il modello è valido sostituisce nelle database il luppolo con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="luppoli">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Luppoli luppoli)
        {
            if (ModelState.IsValid)
            {
                db.Entry(luppoli).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(luppoli);
        }

        // GET: Luppoli/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di un luppolo
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del luppolo trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Luppoli</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Luppoli luppoli = db.Luppoli.Find(id);
            if (luppoli == null)
            {
                return HttpNotFound();
            }
            return View(luppoli);
        }

        // POST: Luppoli/Delete/5
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di un luppolo nella pagina equivalente
        /// Se il modello è valido rimuove nel database il luppolo e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave del luppolo da eliminare</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Luppoli luppoli = db.Luppoli.Find(id);
            db.Luppoli.Remove(luppoli);
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

    }
}
