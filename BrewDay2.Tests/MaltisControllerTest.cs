using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="MaltisControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per MaltisController</summary>
    [TestClass]
    [PexClass(typeof(MaltisController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class MaltisControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public MaltisController ConstructorTest()
        {
            MaltisController target = new MaltisController();
            return target;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]MaltisController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.CreateTest(MaltisController)
        }

        /// <summary>Test stub per Create(Malti)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]MaltisController target, Malti malti)
        {
            ActionResult result = target.Create(malti);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.CreateTest01(MaltisController, Malti)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]MaltisController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.DeleteTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]MaltisController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.DeleteConfirmedTest(MaltisController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]MaltisController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.DetailsTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [TestMethod]
        public ActionResult EditTest([PexAssumeUnderTest]MaltisController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.EditTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Malti)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]MaltisController target, Malti malti)
        {
            ActionResult result = target.Edit(malti);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.EditTest01(MaltisController, Malti)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]MaltisController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControllerTest.IndexTest(MaltisController)
        }
    }
}
