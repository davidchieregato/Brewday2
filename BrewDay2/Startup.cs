using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BrewDay2.Startup))]
namespace BrewDay2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
