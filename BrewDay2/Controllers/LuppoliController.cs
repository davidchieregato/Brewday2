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

	}
}
