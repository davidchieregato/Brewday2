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
    public class LievitisController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Lievitis
        public ActionResult Index()
        {
            ViewBag.me = User.Identity.GetUserId();
            return View(db.Lieviti.ToList());
        }

        // GET: Lievitis/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // GET: Lievitis/Create
        public ActionResult Create()
        {
            Lieviti l = new Lieviti();
            l.UserId = User.Identity.GetUserId();
            return View(l);
        }

        // POST: Lievitis/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Lieviti lieviti)
        {
            if (ModelState.IsValid)
            {
                db.Lieviti.Add(lieviti);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(lieviti);
        }

        // GET: Lievitis/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // POST: Lievitis/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding.
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Lieviti lieviti)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lieviti).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(lieviti);
        }

        // GET: Lievitis/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Lieviti lieviti = db.Lieviti.Find(id);
            if (lieviti == null)
            {
                return HttpNotFound();
            }
            return View(lieviti);
        }

        // POST: Lievitis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Lieviti lieviti = db.Lieviti.Find(id);
            db.Lieviti.Remove(lieviti);
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