using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="ZuccherisControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ZuccherisController</summary>
    [TestClass]
    [PexClass(typeof(ZuccherisController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class ZuccherisControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public ZuccherisController ConstructorTest()
        {
            ZuccherisController target = new ZuccherisController();
            return target;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]ZuccherisController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.CreateTest(ZuccherisController)
        }

        /// <summary>Test stub per Create(Zuccheri)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]ZuccherisController target, Zuccheri zuccheri)
        {
            ActionResult result = target.Create(zuccheri);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.CreateTest01(ZuccherisController, Zuccheri)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteTest([PexAssumeUnderTest]ZuccherisController target, int? id)
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.DeleteTest(ZuccherisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmedTest([PexAssumeUnderTest]ZuccherisController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.DeleteConfirmedTest(ZuccherisController, Int32)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]ZuccherisController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.DetailsTest(ZuccherisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]ZuccherisController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.EditTest(ZuccherisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Zuccheri)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]ZuccherisController target, Zuccheri zuccheri)
        {
            ActionResult result = target.Edit(zuccheri);
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.EditTest01(ZuccherisController, Zuccheri)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]ZuccherisController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo ZuccherisControllerTest.IndexTest(ZuccherisController)
        }
    }
}
