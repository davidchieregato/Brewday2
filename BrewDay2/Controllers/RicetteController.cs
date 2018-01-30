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
    public class RicetteController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Ricette
        public ActionResult Index()
        {
            return View(db.Ricette.ToList());
        }

        public ActionResult MyRecipes()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Index(String nomeparametro)
        {
            List<Ricette> lista = null;
            if (!String.IsNullOrEmpty(nomeparametro))
                lista = db.Ricette.Where(x => x.Categoria == nomeparametro).ToList();
            else
                lista = db.Ricette.ToList();

            return View(lista);
        }
        // GET: Ricette/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // GET: Ricette/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Ricette/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Ricette ricette)
        {
            if (ModelState.IsValid)
            {
                db.Ricette.Add(ricette);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ricette);
        }

        // GET: Ricette/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // POST: Ricette/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Ricette ricette)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ricette).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ricette);
        }

        // GET: Ricette/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ricette ricette = db.Ricette.Find(id);
            if (ricette == null)
            {
                return HttpNotFound();
            }
            return View(ricette);
        }

        // POST: Ricette/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ricette ricette = db.Ricette.Find(id);
            db.Ricette.Remove(ricette);
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

        public ActionResult AggiungiAdditivo(int id)
        {
            AdditiviRicetta ar = new AdditiviRicetta {RicettaId = id};
            SelectList AdditiviId = new SelectList(db.Additivi,"AdditiviId","Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }
        [HttpPost]
        public ActionResult AggiungiAdditivo(AdditiviRicetta ar)
        {
            if (ModelState.IsValid)
            {
                db.AdditiviRicettas.Add(ar);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = AdditiviId;
            return View(ar);
        }

        public ActionResult AggiungiLievito(int id)
        {
            LievitiRicetta lr = new LievitiRicetta {RicettaId = id};
            SelectList LievitiId = new SelectList(db.Lieviti,"LievitiId","Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }
        [HttpPost]
        public ActionResult AggiungiLievito(LievitiRicetta lr)
        {
            if (ModelState.IsValid)
            {
                db.LievitiRicettas.Add(lr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //LievitiRicetta lr = new LievitiRicetta { RicettaId = id };
            SelectList LievitiId = new SelectList(db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = LievitiId;
            return View(lr);
        }
        public ActionResult AggiungiLuppolo(int id)
        {
            LuppoliRicetta lr = new LuppoliRicetta {RicettaId = id};
            SelectList LuppoliId = new SelectList(db.Luppoli,"LuppoliId","Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }
        [HttpPost]
        public ActionResult AggiungiLuppolo(LuppoliRicetta lr)
        {
            if (ModelState.IsValid)
            {
                db.LuppoliRicettas.Add(lr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList LuppoliId = new SelectList(db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = LuppoliId;
            return View(lr);
        }
        public ActionResult AggiungiMalti(int id)
        {
            MaltiRicetta mr = new MaltiRicetta {MaltiId = id};
            SelectList MaltiId = new SelectList(db.Malti,"MaltiId","Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }
        [HttpPost]
        public ActionResult AggiungiMalti(MaltiRicetta mr)
        {
            if (ModelState.IsValid)
            {
                db.MaltiRicettas.Add(mr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList MaltiId = new SelectList(db.Malti, "MaltiId", "Nome");
            ViewBag.malti = MaltiId;
            return View(mr);
        }
        public ActionResult AggiungiZuccheri(int id)
        {
            ZuccheriRicetta zr = new ZuccheriRicetta {RicettaId = id};
            SelectList ZuccheriId = new SelectList(db.Zuccheri,"ZuccheriId","Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }
        [HttpPost]
        public ActionResult AggiungiZuccheri(ZuccheriRicetta zr)
        {
            if (ModelState.IsValid)
            {
                db.ZuccheriRicettas.Add(zr);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList ZuccheriId = new SelectList(db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = ZuccheriId;
            return View(zr);
        }
    }
}
