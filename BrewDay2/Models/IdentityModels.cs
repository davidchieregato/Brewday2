using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace BrewDay2.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit https://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Tenere presente che il valore di authenticationType deve corrispondere a quello definito in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Aggiungere qui i reclami utente personalizzati
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public DbSet<Additivi> Additivi { get; set; }
        public DbSet<Lieviti> Lieviti { get; set; }
        public DbSet<Luppoli> Luppoli { get; set; }
        public DbSet<Malti> Malti { get; set; }
        public DbSet<Zuccheri> Zuccheri { get; set; }
        public DbSet<Ricette> Ricette { get; set; }
        public DbSet<AdditiviRicetta> AdditiviRicettas { get; set; }
        public DbSet<LievitiRicetta> LievitiRicettas { get; set; }
        public DbSet<LuppoliRicetta> LuppoliRicettas { get; set; }
        public DbSet<MaltiRicetta> MaltiRicettas { get; set; }
        public DbSet<ZuccheriRicetta> ZuccheriRicettas { get; set; }
        //public DbSet<Magazzino> Magazzini { get; set; }
        public DbSet<ZuccheriMagazzino> ZuccheriMagazzinos { get; set; }
        public DbSet<AdditiviMagazzino> AdditiviMagazzinos { get; set; }
        public DbSet<LuppoliMagazzino> LuppoliMagazzinos { get; set; }
        public DbSet<LievitiMagazzino> LievitiMagazzinos { get; set; }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        public System.Data.Entity.DbSet<Magazzino> Magazzinoes { get; set; }
    }

}