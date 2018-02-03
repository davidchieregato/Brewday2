using System.Web.Mvc;
using System;
using BrewDay2.Controllers;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Controllers.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per HomeController</summary>
    [TestClass]
    [PexClass(typeof(HomeController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class HomeControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public HomeController ConstructorTest()
        {
            HomeController target = new HomeController();
            return target;
            // TODO: aggiungere asserzioni a metodo HomeControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per About()</summary>
        [PexMethod]
        public ActionResult AboutTest([PexAssumeUnderTest]HomeController target)
        {
            ActionResult result = target.About();
            return result;
            // TODO: aggiungere asserzioni a metodo HomeControllerTest.AboutTest(HomeController)
        }

        /// <summary>Test stub per Contact()</summary>
        [PexMethod]
        public ActionResult ContactTest([PexAssumeUnderTest]HomeController target)
        {
            ActionResult result = target.Contact();
            return result;
            // TODO: aggiungere asserzioni a metodo HomeControllerTest.ContactTest(HomeController)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]HomeController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo HomeControllerTest.IndexTest(HomeController)
        }
    }
}
