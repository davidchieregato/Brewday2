using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class LievitisController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();

        // GET: Lievitis
        /// <summary>
        /// Metodo invocato alla richiesta di Lievitis
        /// Setta nella variabile speciale ViewBag l'utente loggato e restituisce 
        /// alla view  una lista di lieviti
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(_db.Lieviti.ToList());
        }

        // GET: Lievitis/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli su un lievito
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Lievitis</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = _db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // GET: Lievitis/Create
        /// <summary>
        /// Metodo invocato alla creazione di un nuovo lievito
        /// Assegna uno user al lievito con i campi da compilare nella view
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            Lieviti l = new Lieviti {UserId = User.Identity.GetUserId()};
            return View(l);
        }

        // POST: Lievitis/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di un Lievitis 
        /// Se il modello è valido, crea e aggiunge il lievito al database
        /// </summary>
        /// <param name="lieviti">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Lieviti lieviti)
        {
            if (ModelState.IsValid)
            {
                _db.Lieviti.Add(lieviti);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lieviti);
        }

        // GET: Lievitis/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di un nuovo lievito
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del Lievitis trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Lievitis</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = _db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // POST: Lievitis/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un lievito 
        /// Se il modello è valido sostituisce nelle database il lievito con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="lieviti">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Lieviti lieviti)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(lieviti).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lieviti);
        }

        // GET: Lievitis/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di un lievito
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del lievito trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Lievitis</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = _db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // POST: Lievitis/Delete/5
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di un lievito 
        /// Se il modello è valido rimuove nel database il lievito e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave del lievito da eliminare</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Lieviti lieviti = _db.Lieviti.Find(id);
            _db.Lieviti.Remove(lieviti ?? throw new InvalidOperationException());
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