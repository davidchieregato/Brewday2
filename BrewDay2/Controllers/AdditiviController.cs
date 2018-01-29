using System;
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
