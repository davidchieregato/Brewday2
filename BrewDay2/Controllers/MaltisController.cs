using System;
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
    public class MaltisController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();

        // GET: Maltis
        /// <summary>
        /// Metodo invocato alla richiesta di Maltis
        /// Setta nella variabile speciale ViewBag l'utente loggato e restituisce 
        /// alla view  una lista di malti
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(_db.Malti.ToList());
        }

        // GET: Maltis/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli su un malto
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Maltis</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error);
            }
            Malti malti = _db.Malti.Find(id);
            if (malti == null)
            {
                return HttpNotFound();
            }
            return View(malti);
        }

        // GET: Maltis/Create
        /// <summary>
        /// Metodo invocato alla creazione di un nuovo malto
        /// Assegna uno user al malto con i campi da compilare nella view
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            Malti m = new Malti {UserId = User.Identity.GetUserId()};
            return View(m);
        }

        // POST: Maltis/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di un Maltis 
        /// Se il modello è valido, crea e aggiunge il malto al database
        /// </summary>
        /// <param name="malti">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Produttore,Descrizione,Prezzo")] Malti malti)
        {
            if (ModelState.IsValid)
            {
                _db.Malti.Add(malti);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(malti);
        }

        // GET: Maltis/Edit/5
        /// <summary>
        /// Metodo invocato alla modifica di un nuovo malto
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del Maltis trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Maltis</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Malti malti = _db.Malti.Find(id);
            if (malti == null)
            {
                return HttpNotFound();
            }
            return View(malti);
        }

        // POST: Maltis/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un malto 
        /// Se il modello è valido sostituisce nelle database il malto con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="malti">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Produttore,Descrizione,Prezzo")] Malti malti)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(malti).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(malti);
        }

        // GET: Maltis/Delete/5
        /// <summary>
        /// Metodo invocato alla cancellazione di un malto
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del malto trovato
        /// </summary>
        /// <param name="id">Valore della chiave per il model Maltis</param>
        /// <returns></returns>
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error2);
            }
            Malti malti = _db.Malti.Find(id);
            if (malti == null)
            {
                return HttpNotFound();
            }
            return View(malti);
        }

        // POST: Maltis/Delete/5
        /// <summary>
        /// Metodo invocato alla submit della form per la cancellazione di un malto 
        /// Se il modello è valido rimuove nel database il malto e salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="id">Valore della chiave del malto da eliminare</param>
        /// <returns></returns>
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Malti malti = _db.Malti.Find(id);
            _db.Malti.Remove(malti ?? throw new InvalidOperationException());
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