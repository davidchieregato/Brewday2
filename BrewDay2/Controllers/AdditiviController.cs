using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.EnterpriseServices;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class AdditiviController : Controller
    {

        //SE SERVE RECUPERARE UTENTE CORRENTE
        //var me = db.Users.First(x => x.UserName == User.Identity.Name);
        private readonly ApplicationDbContext db = new ApplicationDbContext();

        // GET: Additivi
        /// <summary>
        /// Metodo invocato alla richiesta di Additivi
        /// Setta nella variabile speciale ViewBag l'utente loggato e restituisce 
        /// alla view  una lista di additivi
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Additivi.ToList());
        }

        // GET: Additivi/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli su un additivo
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Additivi</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Additivi additivi = db.Additivi.Find(id);
            if (additivi == null)
            {
                return HttpNotFound();
            }
            return View(additivi);
        }

        // GET: Additivi/Create
        /// <summary>
        /// Metodo invocato alla creazione di un nuovo additivo
        /// Assegna uno user all'additivo con i campi da compilare nella view
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            Additivi a = new Additivi();
            a.UserId = User.Identity.GetUserId();

            return View(a);
        }

        // POST: Additivi/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di un Additivo nella pagina equivalente
        /// Se il modello è valido, crea e aggiunge l' Additivo al database
        /// </summary>
        /// <param name="additivi">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Additivi additivi)
        {
            if (ModelState.IsValid)
            {
                db.Additivi.Add(additivi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(additivi);
        }

        // GET: Additivi/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di un nuovo additivo
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista dell' Additivo trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Additivi</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Additivi additivi = db.Additivi.Find(id);
            if (additivi == null)
            {
                return HttpNotFound();
            }
            return View(additivi);
        }
        // POST: Additivi/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un Additivo nella pagina equivalente
        /// Se il modello è valido sostituisce nelle database l' Additivo con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="additivi">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Additivi additivi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(additivi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(additivi);
        }

        // GET: Additivi/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di un additivo
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista dell' Additivo trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Additivi</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Additivi additivi = db.Additivi.Find(id);
            if (additivi == null)
            {
                return HttpNotFound();
            }
            return View(additivi);
        }

        /// <summary>
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di un Additivo nella pagina equivalente
        /// Se il modello è valido rimuove nel database l' Additivo e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave dell'additivo da eliminare</param>
        /// <returns></returns>
        // POST: Additivi/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Additivi additivi = db.Additivi.Find(id);
            db.Additivi.Remove(additivi);
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
