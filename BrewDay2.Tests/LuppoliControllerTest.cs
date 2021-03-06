using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="LuppoliControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per LuppoliController</summary>
    [TestClass]
    [PexClass(typeof(LuppoliController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class LuppoliControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public LuppoliController ConstructorTest()
        {
            LuppoliController target = new LuppoliController();
            return target;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]LuppoliController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.CreateTest(LuppoliController)
        }

        /// <summary>Test stub per Create(Luppoli)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]LuppoliController target, Luppoli luppoli)
        {
            ActionResult result = target.Create(luppoli);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.CreateTest01(LuppoliController, Luppoli)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]LuppoliController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.DeleteTest(LuppoliController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]LuppoliController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.DeleteConfirmedTest(LuppoliController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]LuppoliController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.DetailsTest(LuppoliController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]LuppoliController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.EditTest(LuppoliController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Luppoli)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]LuppoliController target, Luppoli luppoli)
        {
            ActionResult result = target.Edit(luppoli);
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.EditTest01(LuppoliController, Luppoli)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]LuppoliController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo LuppoliControllerTest.IndexTest(LuppoliController)
        }
    }
}
