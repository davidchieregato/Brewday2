using BrewDay2.Models;
using System.Web.Mvc;
using System;
using BrewDay2.Controllers;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Controllers.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per RicetteController</summary>
    [TestClass]
    [PexClass(typeof(RicetteController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class RicetteControllerTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public RicetteController ConstructorTest()
        {
            RicetteController target = new RicetteController();
            return target;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.ConstructorTest()
        }

        /// <summary>Test stub per AggiungiAdditivo(Int32)</summary>
        [PexMethod]
        public ActionResult AggiungiAdditivoTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.AggiungiAdditivo(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiAdditivoTest(RicetteController, Int32)
        }

        /// <summary>Test stub per AggiungiAdditivo(AdditiviRicetta)</summary>
        [PexMethod]
        public ActionResult AggiungiAdditivoTest01([PexAssumeUnderTest]RicetteController target, AdditiviRicetta ar)
        {
            ActionResult result = target.AggiungiAdditivo(ar);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiAdditivoTest01(RicetteController, AdditiviRicetta)
        }

        /// <summary>Test stub per AggiungiLievito(Int32)</summary>
        [PexMethod]
        public ActionResult AggiungiLievitoTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.AggiungiLievito(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiLievitoTest(RicetteController, Int32)
        }

        /// <summary>Test stub per AggiungiLievito(LievitiRicetta)</summary>
        [PexMethod]
        public ActionResult AggiungiLievitoTest01([PexAssumeUnderTest]RicetteController target, LievitiRicetta lr)
        {
            ActionResult result = target.AggiungiLievito(lr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiLievitoTest01(RicetteController, LievitiRicetta)
        }

        /// <summary>Test stub per AggiungiLuppolo(Int32)</summary>
        [PexMethod]
        public ActionResult AggiungiLuppoloTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.AggiungiLuppolo(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiLuppoloTest(RicetteController, Int32)
        }

        /// <summary>Test stub per AggiungiLuppolo(LuppoliRicetta)</summary>
        [PexMethod]
        public ActionResult AggiungiLuppoloTest01([PexAssumeUnderTest]RicetteController target, LuppoliRicetta lr)
        {
            ActionResult result = target.AggiungiLuppolo(lr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiLuppoloTest01(RicetteController, LuppoliRicetta)
        }

        /// <summary>Test stub per AggiungiMalti(Int32)</summary>
        [PexMethod]
        public ActionResult AggiungiMaltiTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.AggiungiMalti(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiMaltiTest(RicetteController, Int32)
        }

        /// <summary>Test stub per AggiungiMalti(MaltiRicetta)</summary>
        [PexMethod]
        public ActionResult AggiungiMaltiTest01([PexAssumeUnderTest]RicetteController target, MaltiRicetta mr)
        {
            ActionResult result = target.AggiungiMalti(mr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiMaltiTest01(RicetteController, MaltiRicetta)
        }

        /// <summary>Test stub per AggiungiZuccheri(Int32)</summary>
        [PexMethod]
        public ActionResult AggiungiZuccheriTest([PexAssumeUnderTest]RicetteController target, int id)
        {
            ActionResult result = target.AggiungiZuccheri(id);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiZuccheriTest(RicetteController, Int32)
        }

        /// <summary>Test stub per AggiungiZuccheri(ZuccheriRicetta)</summary>
        [PexMethod]
        public ActionResult AggiungiZuccheriTest01([PexAssumeUnderTest]RicetteController target, ZuccheriRicetta zr)
        {
            ActionResult result = target.AggiungiZuccheri(zr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.AggiungiZuccheriTest01(RicetteController, ZuccheriRicetta)
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

        /// <summary>Test stub per EditAdditivo(Int32, Int32)</summary>
        [PexMethod]
        public ActionResult EditAdditivoTest(
            [PexAssumeUnderTest]RicetteController target,
            int id,
            int idr
        )
        {
            ActionResult result = target.EditAdditivo(id, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditAdditivoTest(RicetteController, Int32, Int32)
        }

        /// <summary>Test stub per EditAdditivo(AdditiviRicetta)</summary>
        [PexMethod]
        public ActionResult EditAdditivoTest01([PexAssumeUnderTest]RicetteController target, AdditiviRicetta ar)
        {
            ActionResult result = target.EditAdditivo(ar);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditAdditivoTest01(RicetteController, AdditiviRicetta)
        }

        /// <summary>Test stub per EditLievito(Int32, Int32)</summary>
        [PexMethod]
        public ActionResult EditLievitoTest(
            [PexAssumeUnderTest]RicetteController target,
            int id,
            int idr
        )
        {
            ActionResult result = target.EditLievito(id, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditLievitoTest(RicetteController, Int32, Int32)
        }

        /// <summary>Test stub per EditLievito(LievitiRicetta)</summary>
        [PexMethod]
        public ActionResult EditLievitoTest01([PexAssumeUnderTest]RicetteController target, LievitiRicetta lr)
        {
            ActionResult result = target.EditLievito(lr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditLievitoTest01(RicetteController, LievitiRicetta)
        }

        /// <summary>Test stub per EditLuppolo(Int32, Int32)</summary>
        [PexMethod]
        public ActionResult EditLuppoloTest(
            [PexAssumeUnderTest]RicetteController target,
            int id,
            int idr
        )
        {
            ActionResult result = target.EditLuppolo(id, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditLuppoloTest(RicetteController, Int32, Int32)
        }

        /// <summary>Test stub per EditLuppolo(LuppoliRicetta)</summary>
        [PexMethod]
        public ActionResult EditLuppoloTest01([PexAssumeUnderTest]RicetteController target, LuppoliRicetta lr)
        {
            ActionResult result = target.EditLuppolo(lr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditLuppoloTest01(RicetteController, LuppoliRicetta)
        }

        /// <summary>Test stub per EditMalti(Int32, Int32)</summary>
        [PexMethod]
        public ActionResult EditMaltiTest(
            [PexAssumeUnderTest]RicetteController target,
            int id,
            int idr
        )
        {
            ActionResult result = target.EditMalti(id, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditMaltiTest(RicetteController, Int32, Int32)
        }

        /// <summary>Test stub per EditMalti(MaltiRicetta)</summary>
        [PexMethod]
        public ActionResult EditMaltiTest01([PexAssumeUnderTest]RicetteController target, MaltiRicetta mr)
        {
            ActionResult result = target.EditMalti(mr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditMaltiTest01(RicetteController, MaltiRicetta)
        }

        /// <summary>Test stub per EditZuccheri(Int32, Int32)</summary>
        [PexMethod]
        public ActionResult EditZuccheriTest(
            [PexAssumeUnderTest]RicetteController target,
            int id,
            int idr
        )
        {
            ActionResult result = target.EditZuccheri(id, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditZuccheriTest(RicetteController, Int32, Int32)
        }

        /// <summary>Test stub per EditZuccheri(ZuccheriRicetta, Int32)</summary>
        [PexMethod]
        public ActionResult EditZuccheriTest01(
            [PexAssumeUnderTest]RicetteController target,
            ZuccheriRicetta zr,
            int idr
        )
        {
            ActionResult result = target.EditZuccheri(zr, idr);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.EditZuccheriTest01(RicetteController, ZuccheriRicetta, Int32)
        }

        /// <summary>Test stub per Index()</summary>
        [PexMethod]
        public ActionResult IndexTest([PexAssumeUnderTest]RicetteController target)
        {
            ActionResult result = target.Index();
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.IndexTest(RicetteController)
        }

        /// <summary>Test stub per Index(String)</summary>
        [PexMethod]
        public ActionResult IndexTest01([PexAssumeUnderTest]RicetteController target, string nomeparametro)
        {
            ActionResult result = target.Index(nomeparametro);
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.IndexTest01(RicetteController, String)
        }

        /// <summary>Test stub per MyRecipes()</summary>
        [PexMethod]
        public ActionResult MyRecipesTest([PexAssumeUnderTest]RicetteController target)
        {
            ActionResult result = target.MyRecipes();
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.MyRecipesTest(RicetteController)
        }

        /// <summary>Test stub per WhatShoudIBrewToday()</summary>
        [PexMethod]
        public ActionResult WhatShoudIBrewTodayTest([PexAssumeUnderTest]RicetteController target)
        {
            ActionResult result = target.WhatShoudIBrewToday();
            return result;
            // TODO: aggiungere asserzioni a metodo RicetteControllerTest.WhatShoudIBrewTodayTest(RicetteController)
        }
    }
}
