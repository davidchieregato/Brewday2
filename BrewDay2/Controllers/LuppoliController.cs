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
    public class LuppoliController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Luppoli
        public ActionResult Index()
        {
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
            return View();
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

    }
}
