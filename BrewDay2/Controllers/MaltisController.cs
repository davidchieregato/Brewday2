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

        
    }
}
