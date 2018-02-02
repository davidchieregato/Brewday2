using System;
using System.Collections.Generic;
using System.Data.Entity.SqlServer;
using System.Linq;
using Microsoft.Owin;
using Owin;
using System.Web.Hosting;
using System.Web.Mvc;
using BrewDay2.Models;

[assembly: OwinStartupAttribute(typeof(BrewDay2.Startup))]

namespace BrewDay2
{
    public partial class Startup
    {
        public Startup()
        {
            ModelBinders.Binders.Add(typeof(decimal), new DecimalModelBinder());

            using (var client = new ApplicationDbContext())
            {
                if (!client.Database.Exists())
                {
                    client.Database.Delete();
                    client.Database.CreateIfNotExists();
                    client.Database.Initialize(true);
                }
                if (client.CategoriaBirres.ToList().Count == 0)
                {
                    List<String> categorie = new List<string>();
                    categorie.Add("WitBier");
                    categorie.Add("Maibock");
                    categorie.Add("Weiss");
                    categorie.Add("PaleAle");
                    categorie.Add("Saison");
                    categorie.Add("Bitter");
                    categorie.Add("DoubleIPA");
                    categorie.Add("Marzen");
                    categorie.Add("Bock");
                    categorie.Add("Doppelbock");
                    categorie.Add("Stout");
                    categorie.Add("Porter");
                    categorie.Add("ImperialStout");
                    foreach (var c in categorie)
                    {
                        CategoriaBirre cb = new CategoriaBirre
                        {
                            Nome = c
                        };
                        client.CategoriaBirres.Add(cb);
                    }
                    client.SaveChanges();
                }
                client.Dispose();
            }
        }

        public Startup(HostingEnvironment env)
        {
            using (var client = new ApplicationDbContext())
            {
                client.Database.Initialize(true);
                client.Database.CreateIfNotExists();
                client.Dispose();
            }
        }

        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}