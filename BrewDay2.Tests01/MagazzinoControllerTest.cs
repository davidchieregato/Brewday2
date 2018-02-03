using BrewDay2.Models;
using System.Web.Mvc;
using System;
using BrewDay2.Controllers;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Controllers.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per MagazzinoController</summary>
    [TestClass]
    [PexClass(typeof(MagazzinoController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class MagazzinoControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public MagazzinoController ConstructorTest()
        {
            MagazzinoController target = new MagazzinoController();
            return target;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per AggiungiAdditivo()</summary>
        [PexMethod]
        public ActionResult AggiungiAdditivoTest([PexAssumeUnderTest]MagazzinoController target)
        {
            ActionResult result = target.AggiungiAdditivo();
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.AggiungiAdditivoTest(MagazzinoController)
        }

        /// <summary>Test stub per AggiungiAdditivo(AdditiviMagazzino)</summary>
        [PexMethod]
        public ActionResult AggiungiAdditivoTest01([PexAssumeUnderTest]MagazzinoController target, AdditiviMagazzino am)
        {
            ActionResult result = target.AggiungiAdditivo(am);
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.AggiungiAdditivoTest01(MagazzinoController, AdditiviMagazzino)
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ActionResult CreateTest([PexAssumeUnderTest]MagazzinoController target)
        {
            ActionResult result = target.Create();
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.CreateTest(MagazzinoController)
        }

        /// <summary>Test stub per Create(Magazzino)</summary>
        [PexMethod]
        public ActionResult CreateTest01([PexAssumeUnderTest]MagazzinoController target, Magazzino magazzino)
        {
            ActionResult result = target.Create(magazzino);
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.CreateTest01(MagazzinoController, Magazzino)
        }

        /// <summary>Test stub per Details(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult DetailsTest([PexAssumeUnderTest]MagazzinoController target, int? id)
        {
            ActionResult result = target.Details(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.DetailsTest(MagazzinoController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Nullable`1&lt;Int32&gt;)</summary>
        [PexMethod]
        public ActionResult EditTest([PexAssumeUnderTest]MagazzinoController target, int? id)
        {
            ActionResult result = target.Edit(id);
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.EditTest(MagazzinoController, Nullable`1<Int32>)
        }

        /// <summary>Test stub per Edit(Magazzino)</summary>
        [PexMethod]
        public ActionResult EditTest01([PexAssumeUnderTest]MagazzinoController target, Magazzino magazzino)
        {
            ActionResult result = target.Edit(magazzino);
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.EditTest01(MagazzinoController, Magazzino)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]MagazzinoController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo MagazzinoControllerTest.IndexTest(MagazzinoController)
        }
    }
}
