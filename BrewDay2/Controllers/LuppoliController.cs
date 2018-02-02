using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay.Models;
using Microsoft.AspNet.Identity;

namespace BrewDay.Controllers
{
    [Authorize]
    public class LuppoliController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Luppoli
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Luppoli.ToList());
        }

        // GET: Luppoli/Details/5
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
        public ActionResult Create()
        {
            Luppoli l = new Luppoli();
            l.UserId = User.Identity.GetUserId();
            return View(l);
        }

        // POST: Luppoli/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
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