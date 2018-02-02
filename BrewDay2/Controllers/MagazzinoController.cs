using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay.Models;

namespace BrewDay.Controllers
{
    [Authorize]
    public class MagazzinoController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Magazzino
        public ActionResult Index()
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            return View(db.Magazzinoes.First(f => f.UserId == me.Id));            
        }

        // GET: Magazzino/Details/5
        public ActionResult Details(int? id)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Magazzino magazzino = db.Magazzinoes.Find(id);
            if (magazzino == null)
            {
                return HttpNotFound();
            }
            return View(magazzino);
        }

        // GET: Magazzino/Create
        public ActionResult Create()
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino m = new Magazzino
            {
                UserId = me.Id
            };
            return View(m);
        }

        // POST: Magazzino/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MagazzinoId,UserId")] Magazzino magazzino)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            if (ModelState.IsValid)
            {
                db.Magazzinoes.Add(magazzino);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(magazzino);
        }

        // GET: Magazzino/Edit/5
        public ActionResult Edit(int? id)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Magazzino magazzino = db.Magazzinoes.Find(id);
            if (magazzino == null)
            {
                return HttpNotFound();
            }
            return View(magazzino);
        }

        // POST: Magazzino/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MagazzinoId,UserId")] Magazzino magazzino)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            if (ModelState.IsValid)
            {
                db.Entry(magazzino).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(magazzino);
        }

        // GET: Magazzino/Delete/5
        public ActionResult Delete(int? id)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Magazzino magazzino = db.Magazzinoes.Find(id);
            if (magazzino == null)
            {
                return HttpNotFound();
            }
            return View(magazzino);
        }

        // POST: Magazzino/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = db.Magazzinoes.Find(id);
            db.Magazzinoes.Remove(magazzino);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult AggiungiAdditivo()
        {
            AdditiviMagazzino am = new AdditiviMagazzino();
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList Additivi = new SelectList(db.Additivi,"AdditiviId","Nome");
            ViewBag.Additivi = Additivi;
            return View(am);

        }
        [HttpPost]
        public ActionResult AggiungiAdditivo(AdditiviMagazzino am)
        {
            if (ModelState.IsValid)
            {
                db.AdditiviMagazzinos.Add(am);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList Additivi = new SelectList(db.Additivi, "AdditiviId", "Nome");
            ViewBag.Additivi = Additivi;
            return View(am);

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
