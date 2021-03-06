using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="LievitisControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per LievitisController</summary>
    [TestClass]
    [PexClass(typeof(LievitisController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class LievitisControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public LievitisController ConstructorTest()
        {
            LievitisController target = new LievitisController();
            return target;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]LievitisController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.CreateTest(LievitisController)
        }

        /// <summary>Test stub per Create(Lieviti)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]LievitisController target, Lieviti lieviti)
        {
            ActionResult result = target.Create(lieviti);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.CreateTest01(LievitisController, Lieviti)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]LievitisController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.DeleteTest(LievitisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]LievitisController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.DeleteConfirmedTest(LievitisController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]LievitisController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.DetailsTest(LievitisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]LievitisController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.EditTest(LievitisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Lieviti)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]LievitisController target, Lieviti lieviti)
        {
            ActionResult result = target.Edit(lieviti);
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.EditTest01(LievitisController, Lieviti)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]LievitisController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo LievitisControllerTest.IndexTest(LievitisController)
        }
    }
}
