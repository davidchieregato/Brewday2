using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="AdditiviControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    [TestClass]
    [PexClass(typeof(AdditiviController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class AdditiviControllerTest
    {

        [PexMethod]
        public ActionResult Index([PexAssumeUnderTest]AdditiviController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.Index(AdditiviController)
        }

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public AdditiviController ConstructorTest()
        {
            AdditiviController target = new AdditiviController();
            return target;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]AdditiviController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.CreateTest(AdditiviController)
        }

        /// <summary>Test stub per Create(Additivi)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]AdditiviController target, Additivi additivi)
        {
            ActionResult result = target.Create(additivi);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.CreateTest01(AdditiviController, Additivi)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]AdditiviController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.DeleteTest(AdditiviController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]AdditiviController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.DeleteConfirmedTest(AdditiviController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]AdditiviController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.DetailsTest(AdditiviController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]AdditiviController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.EditTest(AdditiviController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Additivi)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]AdditiviController target, Additivi additivi)
        {
            ActionResult result = target.Edit(additivi);
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.EditTest01(AdditiviController, Additivi)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]AdditiviController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo AdditiviControllerTest.IndexTest(AdditiviController)
        }
    }
}
