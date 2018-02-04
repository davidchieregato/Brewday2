using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Owin;
using Owin;
using System.Web.Hosting;
using System.Web.Mvc;
using BrewDay2.Models;
using BrewDay2.App_Start;

[assembly: OwinStartupAttribute(typeof(BrewDay2.Startup))]

namespace BrewDay2
{
    public partial class Startup
    {
        public Startup()
        {
            ModelBinders.Binders.Add(typeof(decimal), new DecimalModelBinder());
            ModelBinders.Binders.Add(typeof(decimal?), new DecimalModelBinder());
            //using (var client = new ApplicationDbContext())
            //{
            //    if (!client.Database.Exists())
            //    {
            //        client.Database.Delete();
            //        client.Database.CreateIfNotExists();
            //        client.Database.Initialize(true);
            //    }
            //    if (client.CategoriaBirres.ToList().Count == 0)
            //    {
            //        List<String> categorie = new List<string>
            //        {
            //            "WitBier",
            //            "Maibock",
            //            "Weiss",
            //            "PaleAle",
            //            "Saison",
            //            "Bitter",
            //            "DoubleIPA",
            //            "Marzen",
            //            "Bock",
            //            "Doppelbock",
            //            "Stout",
            //            "Porter",
            //            "ImperialStout"
            //        };
            //        foreach (var c in categorie)
            //        {
            //            CategoriaBirre cb = new CategoriaBirre
            //            {
            //                Nome = c
            //            };
            //            client.CategoriaBirres.Add(cb);
            //        }
            //        client.SaveChanges();
            //    }
            //    client.Dispose();
            //}
        }


        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}