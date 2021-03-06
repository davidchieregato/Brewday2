using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="RicetteControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per RicetteController</summary>
    [TestClass]
    [PexClass(typeof(RicetteController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class RicetteControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public RicetteController ConstructorTest()
        {
            RicetteController target = new RicetteController();
            return target;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]RicetteController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.CreateTest(RicetteController)
        }

        /// <summary>Test stub per Create(Ricette)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]RicetteController target, Ricette ricette)
        {
            ActionResult result = target.Create(ricette);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.CreateTest01(RicetteController, Ricette)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]RicetteController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.DeleteTest(RicetteController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.DeleteConfirmedTest(RicetteController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]RicetteController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.DetailsTest(RicetteController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]RicetteController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditTest(RicetteController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Ricette)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]RicetteController target, Ricette ricette)
        {
            ActionResult result = target.Edit(ricette);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditTest01(RicetteController, Ricette)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]RicetteController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.IndexTest(RicetteController)
        }
    }
}
