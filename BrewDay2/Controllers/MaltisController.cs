using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay2.Models;

namespace BrewDay.Controllers
{
    [Authorize]
    public class MaltisController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Maltis
        public ActionResult Index()
        {
            return View(db.Malti.ToList());
        }

        // GET: Maltis/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Malti malti = db.Malti.Find(id);
            if (malti == null)
            {
                return HttpNotFound();
            }
            return View(malti);
        }

        // GET: Maltis/Create
        public ActionResult Create()
        {
            return View();
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
                db.Malti.Add(malti);
                db.SaveChanges();
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
            Malti malti = db.Malti.Find(id);
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
                db.Entry(malti).State = EntityState.Modified;
                db.SaveChanges();
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
            Malti malti = db.Malti.Find(id);
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
            Malti malti = db.Malti.Find(id);
            db.Malti.Remove(malti);
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
