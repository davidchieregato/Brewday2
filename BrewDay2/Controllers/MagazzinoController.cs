using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BrewDay2.App_Start;
using BrewDay2.Models;

namespace BrewDay2.Controllers
{
    [Authorize]
    public class MagazzinoController : Controller
    {
        private readonly ApplicationDbContext _db = new ApplicationDbContext();
        // GET: Magazzino
        /// <summary>
        /// Metodo invocato alla richiesta di visualizzazione del Magazzino
        /// Setta nella variabile speciale ViewBag lo Username e ritorna la sua vista specifica confrontando gli ID
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            var mioMagazzino = _db.Magazzinoes.First(f => f.UserId == me.Id);
            mioMagazzino.AdditiviUtente = _db.AdditiviMagazzinos.Where(x => x.MagazzinoId == mioMagazzino.MagazzinoId).ToList();
            mioMagazzino.LievitiUtente =
                _db.LievitiMagazzinos.Where(x => x.MagazzinoId == mioMagazzino.MagazzinoId).ToList();
            mioMagazzino.LuppoliUtente =
                _db.LuppoliMagazzinos.Where(x => x.MagazzinoId == mioMagazzino.MagazzinoId).ToList();
            mioMagazzino.MaltiUtente =
                _db.MaltiMagazzinos.Where(x => x.MagazzinoId == mioMagazzino.MagazzinoId).ToList();
            mioMagazzino.ZuccheriUtente =
                _db.ZuccheriMagazzinos.Where(x => x.MagazzinoId == mioMagazzino.MagazzinoId).ToList();
            return View(mioMagazzino);            
        }

        // GET: Magazzino/Details/5
        /// <summary>
        /// Metodo invocato alla richiesta di dettagli sul magazzino
        /// Restituisce errore se id è nullo o non esiste
        /// Altrimenti restituisce l'elemento cercato alla pagina
        /// </summary>
        /// <param name="id">Valore della chiave per model Magazzino</param>
        /// <returns></returns>
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                PathConfig c = new PathConfig();
                return Redirect(c.error);
            }
            Magazzino magazzino = _db.Magazzinoes.Find(id);
            if (magazzino == null)
            {
                return HttpNotFound();
            }
            return View(magazzino);
        }

        // GET: Magazzino/Create
        /// <summary>
        /// Metodo invocato alla creazione di un magazzino
        /// Crea un nuovo oggetto Magazzino
        /// Assegna a UserId l' ID dell' utente loggato
        /// Ritorna la vista 
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino m = new Magazzino
            {
                UserId = me.Id
            };
            return View(m);
        }

        // POST: Magazzino/Create
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la creazione di un Magazzino 
        /// Se il modello è valido, crea e aggiunge il magazzino al database
        /// </summary>
        /// <param name="magazzino">Oggetto da inserire nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MagazzinoId,UserId")] Magazzino magazzino)
        {
            if (ModelState.IsValid)
            {
                _db.Magazzinoes.Add(magazzino);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(magazzino);
        }

        // GET: Magazzino/Edit/5
        /// Metodo invocato alla modifica di un magazzino
        /// Se l' ID è nullo ritorna uno StatusCode di BadRequest
        /// Se l' ID non è presente nel database ritorna HttpNotFound
        /// Se è presente ritorna la vista del Magazzino trovato
        /// <param name="id">Valore della chiave per il model Magazzino</param>
        /// <returns></returns>
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Magazzino magazzino = _db.Magazzinoes.Find(id);
            if (magazzino == null)
            {
                return HttpNotFound();
            }
            return View(magazzino);
        }

        // POST: Magazzino/Edit/5
        // Per proteggere da attacchi di overposting, abilitare le proprietà a cui eseguire il binding. 
        // Per ulteriori dettagli, vedere https://go.microsoft.com/fwlink/?LinkId=317598.
        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un magazzino 
        /// Se il modello è valido sostituisce nelle database il magazzino con quello modificato, salva i cambiamenti
        /// Ritorna la vista
        /// </summary>
        /// <param name="magazzino">Oggetto da modificare nel database</param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MagazzinoId,UserId")] Magazzino magazzino)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(magazzino).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(magazzino);
        }

        

        /// <summary>
        /// Metodo invocato all' aggiunta di un nuovo additivo nel magazzino
        /// Crea un nuovo AdditiviMagazzino assegnandolo al magazzino collegato all' ID dell' utente
        /// Assegna la lista di additivi alla variabile speciale ViewBag
        /// Ritorna la vista di AdditiviMagazzino
        /// </summary>
        /// <returns></returns>
        public ActionResult AggiungiAdditivo()
        {
            AdditiviMagazzino am = new AdditiviMagazzino();
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            var listaAdditivi = _db.Additivi.Except(_db.AdditiviMagazzinos
                .Where(x => x.MagazzinoId == magazzino.MagazzinoId).Select(x => x.Additivo));
            SelectList additivi = new SelectList(listaAdditivi,"AdditiviId","Nome");
            ViewBag.Additivi = additivi;
            return View(am);

        }

        public ActionResult AggiungiLievito()
        {
            LievitiMagazzino lm = new LievitiMagazzino();
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            lm.Magazzino = magazzino;
            lm.MagazzinoId = magazzino.MagazzinoId;
            var listaLievitis = _db.Lieviti.Except(_db.LievitiMagazzinos
                .Where(x => x.MagazzinoId == magazzino.MagazzinoId).Select(x => x.Lievito));
            SelectList lieviti = new SelectList(listaLievitis, "LievitiId", "Nome");
            ViewBag.Lieviti = lieviti;
            return View(lm);

        }

        public ActionResult AggiungiLuppolo()
        {
            LuppoliMagazzino lum = new LuppoliMagazzino();
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            lum.Magazzino = magazzino;
            lum.MagazzinoId = magazzino.MagazzinoId;
            var listaLuppolis = _db.Luppoli.Except(_db.LuppoliMagazzinos
                .Where(x => x.MagazzinoId == magazzino.MagazzinoId).Select(x => x.Luppolo));
            SelectList luppoli = new SelectList(listaLuppolis, "LuppoliId", "Nome");
            ViewBag.Luppoli = luppoli;
            return View(lum);

        }

        public ActionResult AggiungiMalti()
        {
            MaltiMagazzino mm = new MaltiMagazzino();
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            mm.Magazzino = magazzino;
            mm.MagazzinoId = magazzino.MagazzinoId;
            var listaMalti = _db.Malti.Except(_db.MaltiMagazzinos
                .Where(x => x.MagazzinoId == magazzino.MagazzinoId).Select(x => x.Malto));
            SelectList malti = new SelectList(listaMalti, "MaltiId", "Nome");
            ViewBag.Malti = malti;
            return View(mm);

        }

        public ActionResult AggiungiZucchero()
        {
            ZuccheriMagazzino am = new ZuccheriMagazzino();
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            var listaZuccheri = _db.Zuccheri.Except(_db.ZuccheriMagazzinos
                .Where(x => x.MagazzinoId == magazzino.MagazzinoId).Select(x => x.Zucchero));
            SelectList zuccheri = new SelectList(listaZuccheri, "ZuccheriId", "Nome");
            ViewBag.Zuccheri = zuccheri;
            return View(am);

        }

        /// <summary>
        /// Metodo invocato alla submit della form per l'aggiunto di un additivo nel magazzino 
        /// Se il modello è valido, aggiunge il nuovo additivo al magazzino e salva i cambiamenti
        /// Assegna l'AdditiviMagazzino al magazzino collegato all' ID dell' utente
        /// Ritorna la vista 
        /// </summary>
        /// <param name="am">Additivo da aggiungere al magazzino</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AggiungiAdditivo(AdditiviMagazzino am)
        {
            if (ModelState.IsValid)
            {
                _db.AdditiviMagazzinos.Add(am);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList additivi = new SelectList(_db.Additivi, "AdditiviId", "Nome");
            ViewBag.Additivi = additivi;
            return View(am);

        }

        [HttpPost]
        public ActionResult AggiungiLievito(LievitiMagazzino lm)
        {
            if (ModelState.IsValid)
            {
                _db.LievitiMagazzinos.Add(lm);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            lm.Magazzino = magazzino;
            lm.MagazzinoId = magazzino.MagazzinoId;
            SelectList lieviti = new SelectList(_db.Lieviti, "LievitiId", "Nome");
            ViewBag.Lieviti = lieviti;
            return View(lm);

        }

        [HttpPost]
        public ActionResult AggiungiLuppolo(LuppoliMagazzino am)
        {
            if (ModelState.IsValid)
            {
                _db.LuppoliMagazzinos.Add(am);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList luppoli = new SelectList(_db.Luppoli, "LuppoliId", "Nome");
            ViewBag.Luppoli = luppoli;
            return View(am);

        }

        [HttpPost]
        public ActionResult AggiungiMalti(MaltiMagazzino am)
        {
            if (ModelState.IsValid)
            {
                _db.MaltiMagazzinos.Add(am);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList malti = new SelectList(_db.Malti, "MaltiId", "Nome");
            ViewBag.Malti = malti;
            return View(am);

        }

        [HttpPost]
        public ActionResult AggiungiZucchero(ZuccheriMagazzino am)
        {
            if (ModelState.IsValid)
            {
                _db.ZuccheriMagazzinos.Add(am);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            var me = _db.Users.First(x => x.UserName == User.Identity.Name);
            Magazzino magazzino = _db.Magazzinoes.FirstOrDefault(x => x.UserId == me.Id);
            am.Magazzino = magazzino;
            am.MagazzinoId = magazzino.MagazzinoId;
            SelectList zuccheri = new SelectList(_db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.Zuccheri = zuccheri;
            return View(am);

        }

        /// <summary>
        /// Metodo invocato alla modifica di un additivo nella ricetta
        /// Cerca nel database l'additivo e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID dell'additivo da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditAdditivo(int id, int idr)
        {
            AdditiviMagazzino ar = _db.AdditiviMagazzinos.Where(x => x.AdditiviId == id && x.MagazzinoId == idr).FirstOrDefault();
            //SelectList AdditiviId = new SelectList(db.Additivi, "AdditiviId", "Nome")
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un additivo nella ricetta
        /// Cerca nel database l'additivo e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag l'additivo modificato e ne ritorna la vista
        /// </summary>
        /// <param name="ar">Additivo da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditAdditivo(AdditiviMagazzino ar)
        {
            AdditiviMagazzino ar2 = _db.AdditiviMagazzinos.Where(x => x.AdditiviId == ar.AdditiviId && x.MagazzinoId == ar.MagazzinoId).FirstOrDefault();
            ar2.Quantita = ar.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList additiviId = new SelectList(_db.Additivi, "AdditiviId", "Nome");
            ViewBag.additivi = additiviId;
            return View(ar);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un lievito nella ricetta
        /// Cerca nel database il lievito e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del lievito da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditLievito(int id, int idr)
        {
            LievitiMagazzino lr = _db.LievitiMagazzinos.Where(x => x.LievitiId == id && x.MagazzinoId == idr).FirstOrDefault();
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un lievito nella ricetta
        /// Cerca nel database il lievito e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il lievito modificato e ne ritorna la vista
        /// </summary>
        /// <param name="lr">Lievito da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditLievito(LievitiMagazzino lr)
        {
            LievitiMagazzino lr2 = _db.LievitiMagazzinos.Where(x => x.LievitiId == lr.LievitiId && x.MagazzinoId == lr.MagazzinoId).FirstOrDefault();
            lr2.Quantita = lr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList lievitiId = new SelectList(_db.Lieviti, "LievitiId", "Nome");
            ViewBag.lieviti = lievitiId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un luppolo nella ricetta
        /// Cerca nel database il luppolo e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del luppolo da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditLuppolo(int id, int idr)
        {
            LuppoliMagazzino lr = _db.LuppoliMagazzinos.Where(x => x.LuppoliId == id && x.MagazzinoId == idr).FirstOrDefault();
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un luppolo nella ricetta
        /// Cerca nel database il luppolo e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il luppolo modificato e ne ritorna la vista
        /// </summary>
        /// <param name="lr">Luppolo da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditLuppolo(LuppoliMagazzino lr)
        {
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList luppoliId = new SelectList(_db.Luppoli, "LuppoliId", "Nome");
            ViewBag.luppoli = luppoliId;
            return View(lr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di un malto nella ricetta
        /// Cerca nel database il malto e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID del malto da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditMalti(int id, int idr)
        {
            MaltiMagazzino mr = _db.MaltiMagazzinos.Where(x => x.MaltiId == id && x.MagazzinoId == idr).FirstOrDefault();
            return View(mr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di un malto nella ricetta
        /// Cerca nel database il malto e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag il malto modificato e ne ritorna la vista
        /// </summary>
        /// <param name="mr">Malto da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditMalti(MaltiMagazzino mr)
        {
            MaltiMagazzino mr2 = _db.MaltiMagazzinos.Where(x => x.MaltiId == mr.MaltiId && x.MagazzinoId == mr.MagazzinoId).FirstOrDefault();
            mr2.Quantita = mr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList maltiId = new SelectList(_db.Malti, "MaltiId", "Nome");
            ViewBag.malti = maltiId;
            return View(mr);
        }

        /// <summary>
        /// Metodo invocato alla modifica di uno zucchero nella ricetta
        /// Cerca nel database lo zucchero e la ricetta passati come parametri
        /// Ritorna la vista 
        /// </summary>
        /// <param name="id">ID dello zucchero da modificare</param>
        /// <param name="idr">ID della ricetta da modificare</param>
        /// <returns></returns>
        public ActionResult EditZuccheri(int id, int idr)
        {
            ZuccheriMagazzino zr = _db.ZuccheriMagazzinos.Where(x => x.MagazzinoId == idr && x.ZuccheriId == id).FirstOrDefault();
            return View(zr);
        }

        /// <summary>
        /// Metodo invocato alla submit della form per la modifica di uno zucchero nella ricetta
        /// Cerca nel database lo zucchero e ne aggiorna la quantità
        /// Assegna alla variabile speciale ViewBag lo zucchero modificato e ne ritorna la vista
        /// </summary>
        /// <param name="zr">Zucchero da modificare nella ricetta</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditZuccheri(ZuccheriMagazzino zr)
        {
            ZuccheriMagazzino zr2 = _db.ZuccheriMagazzinos.Where(x => x.ZuccheriId == zr.ZuccheriId && x.MagazzinoId == zr.MagazzinoId).FirstOrDefault();
            zr2.Quantita = zr.Quantita;
            if (ModelState.IsValid)
            {
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            SelectList zuccheriId = new SelectList(_db.Zuccheri, "ZuccheriId", "Nome");
            ViewBag.zuccheri = zuccheriId;
            return View(zr);
        }
        /// <summary>
        /// Metodo invocato alla cancellazione del database
        /// Se il flag è true, cancella il database
        /// </summary>
        /// <param name="disposing">Flag utilizzato per cancellare il database</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                _db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
