using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BrewDay2.App_Start
{
    public class PathConfig
    {
        public string error { get; }
        public string error2 { get; }
        public string jquery { get; }
        public string jqueryincl { get; }
        public string validate { get; }
        public string validateincl { get; }
        public string modernizer { get; }
        public string modernizerincl { get; }
        public string bootstrap { get; }
        public string bootstrapincl { get; }
        public string respond { get; }
        public string css { get; }
        public string cssincl { get; }
        public string cssbootstrap { get; }
        public PathConfig()
        {
            error = "/pages/samples/404.html";
            error2 = "/pages/samples/404.html";
            jquery = "~/ bundles / jquery";
            jqueryincl = "~/Scripts/jquery-{version}.js";
            validate = "~/bundles/jqueryval";
            validateincl = "~/Scripts/jquery.validate*";
            modernizer = "~/bundles/modernizr";
            modernizerincl = "~/Scripts/modernizr-*";
            bootstrap = "~/bundles/bootstrap";
            bootstrapincl = "~/Scripts/bootstrap.js";
            respond = "~/Scripts/respond.js";
            css = "~/Content/css";
            cssincl = "~/Content/site.css";
            cssbootstrap = "~/Content/bootstrap.css";
        }
    }
}