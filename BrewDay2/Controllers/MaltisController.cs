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
    public class MaltisController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();

        // GET: Maltis
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(_db.Malti.ToList());
        }

        // GET: Maltis/Details/5
        public ActionResult Details(int? id)
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

        // GET: Maltis/Create
        public ActionResult Create()
        {
            Malti m = new Malti {UserId = User.Identity.GetUserId()};
            return View(m);
        }

        // POST: Maltis/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
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
        public ActionResult Delete(int? id)
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

        // POST: Maltis/Delete/5
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