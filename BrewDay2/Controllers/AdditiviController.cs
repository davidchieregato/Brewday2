﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.EnterpriseServices;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BrewDay.Models;
using BrewDay2.Models;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class AdditiviController : Controller
    {

        //SE SERVE RECUPERARE UTENTE CORRENTE
        //var me = db.Users.First(x => x.UserName == User.Identity.Name);
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Additivi
        public ActionResult Index()
        {
            return View(db.Additivi.ToList());
        }

        // GET: Additivi/Details/5
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
            return View();
        }

        // POST: Additivi/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nome,Descrizione,Produttore,Prezzo")] Additivi additivi)
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