// <copyright file="MaltisControlleruTest.cs">Copyright ©  2018</copyright>
using System;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Controllers.UnitTest
{
    /// <summary>Questa classe contiene unit test con parametri per MaltisController</summary>
    [PexClass(typeof(MaltisController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [TestClass]
    public partial class MaltisControlleruTest
    {
        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public MaltisController ConstructoruTest()
        {
            MaltisController target = new MaltisController();
            return target;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.ConstructoruTest()
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateuTest([PexAssumeUnderTest]MaltisController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.CreateuTest(MaltisController)
        }

        /// <summary>Test stub per Create(Malti)</summary>
        [PexMethod]
        public ActionResult CreateuTest01([PexAssumeUnderTest]MaltisController target, Malti malti)
        {
            ActionResult result = target.Create(malti);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.CreateuTest01(MaltisController, Malti)
        }

        /// <summary>Test stub per DeleteConfirmed(Int32)</summary>
        [PexMethod]
        public ActionResult DeleteConfirmeduTest([PexAssumeUnderTest]MaltisController target, int id)
        {
            ActionResult result = target.DeleteConfirmed(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.DeleteConfirmeduTest(MaltisController, Int32)
        }

        /// <summary>Test stub per Delete(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DeleteuTest(
            [PexAssumeUnderTest]MaltisController target,
            int? id
        )
        {
            ActionResult result = target.Delete(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.DeleteuTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsuTest(
            [PexAssumeUnderTest]MaltisController target,
            int? id
        )
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.DetailsuTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EdituTest(
            [PexAssumeUnderTest]MaltisController target,
            int? id
        )
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.EdituTest(MaltisController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Malti)</summary>
        [PexMethod]
        public ActionResult EdituTest01([PexAssumeUnderTest]MaltisController target, Malti malti)
        {
            ActionResult result = target.Edit(malti);
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.EdituTest01(MaltisController, Malti)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexuTest([PexAssumeUnderTest]MaltisController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo MaltisControlleruTest.IndexuTest(MaltisController)
        }
    }
}
