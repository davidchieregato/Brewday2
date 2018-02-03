using BrewDay2.App_Start;
using System.Web.Optimization;

namespace BrewDay2
{
    public static class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            PathConfig c = new PathConfig();
            bundles.Add(new ScriptBundle(c.jquery).Include(
                        c.jqueryincl));

            bundles.Add(new ScriptBundle(c.validate).Include(
                        c.validateincl));

            // Utilizzare la versione di sviluppo di Modernizr per eseguire attività di sviluppo e formazione. Successivamente, quando si è
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle(c.modernizer).Include(
                        c.modernizerincl));

            bundles.Add(new ScriptBundle(c.bootstrap).Include(
                      c.bootstrapincl,
                      c.respond));

            bundles.Add(new StyleBundle(c.css).Include(
                      c.cssbootstrap,
                      c.cssincl));
        }
    }
}
