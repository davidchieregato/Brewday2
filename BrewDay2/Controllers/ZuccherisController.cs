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
    public class ZuccherisController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Zuccheris
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Zuccheri.ToList());
        }

        // GET: Zuccheris/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zuccheri zuccheri = db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // GET: Zuccheris/Create
        public ActionResult Create()
        {
            Zuccheri z = new Zuccheri();
            z.UserId = User.Identity.GetUserId();
            return View(z);
        }

        // POST: Zuccheris/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Zuccheri zuccheri)
        {
            if (ModelState.IsValid)
            {
                db.Zuccheri.Add(zuccheri);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(zuccheri);
        }

        // GET: Zuccheris/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zuccheri zuccheri = db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // POST: Zuccheris/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Zuccheri zuccheri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(zuccheri).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(zuccheri);
        }

        // GET: Zuccheris/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Zuccheri zuccheri = db.Zuccheri.Find(id);
            if (zuccheri == null)
            {
                return HttpNotFound();
            }
            return View(zuccheri);
        }

        // POST: Zuccheris/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Zuccheri zuccheri = db.Zuccheri.Find(id);
            db.Zuccheri.Remove(zuccheri);
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