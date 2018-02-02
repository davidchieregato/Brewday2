using System.Data.Entity;
using System.Linq;
using System.Net;
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
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Additivi
        /// <summary>
        /// Metodo invocato alla richiesta /Additivi/
        /// Setta nella variabile speciale viewbag l'utente loggato e restituisce
        /// alla view una collection di additivi
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Additivi.ToList());
        }

        // GET: Additivi/Details/5
        /// <summary>
        /// Metodo invocato dalla richiesta di dettagli su un additivo
        /// Es: GET: Additivi/Details/5
        /// Restituisce errore se id è nullo o non esiste a db
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
        public ActionResult Create()
        {
            Additivi a = new Additivi();
            a.UserId = User.Identity.GetUserId();

            return View(a);
        }

        // POST: Additivi/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
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