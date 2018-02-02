using BrewDay.Models;
using System.Linq;
using System.Web.Mvc;

namespace BrewDay.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        [HttpGet]
        public ActionResult Index()
        {
            var daRestituire = db.Ricette.Where(x => x.Privata == false);
            return View(daRestituire);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}