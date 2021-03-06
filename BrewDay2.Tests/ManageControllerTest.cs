using System;
using System.Threading.Tasks;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="ManageControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ManageController</summary>
    [TestClass]
    [PexClass(typeof(ManageController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class ManageControllerTest
    {

        /// <summary>Test stub per .ctor(ApplicationUserManager, ApplicationSignInManager)</summary>
        [PexMethod]
        public ManageController ConstructorTest(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            ManageController target = new ManageController(userManager, signInManager);
            return target;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.ConstructorTest(ApplicationUserManager, ApplicationSignInManager)
        }

        /// <summary>Test stub per AddPhoneNumber()</summary>
        [PexMethod]
        public ActionResult AddPhoneNumberTest([PexAssumeUnderTest]ManageController target)
        {
            ActionResult result = target.AddPhoneNumber();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.AddPhoneNumberTest(ManageController)
        }

        /// <summary>Test stub per AddPhoneNumber(AddPhoneNumberViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> AddPhoneNumberTest01([PexAssumeUnderTest]ManageController target, AddPhoneNumberViewModel model)
        {
            Task<ActionResult> result = target.AddPhoneNumber(model);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.AddPhoneNumberTest01(ManageController, AddPhoneNumberViewModel)
        }

        /// <summary>Test stub per ChangePassword()</summary>
        [PexMethod]
        public ActionResult ChangePasswordTest([PexAssumeUnderTest]ManageController target)
        {
            ActionResult result = target.ChangePassword();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.ChangePasswordTest(ManageController)
        }

        /// <summary>Test stub per ChangePassword(ChangePasswordViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> ChangePasswordTest01([PexAssumeUnderTest]ManageController target, ChangePasswordViewModel model)
        {
            Task<ActionResult> result = target.ChangePassword(model);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.ChangePasswordTest01(ManageController, ChangePasswordViewModel)
        }

        /// <summary>Test stub per DisableTwoFactorAuthentication()</summary>
        [PexMethod]
        public Task<ActionResult> DisableTwoFactorAuthenticationTest([PexAssumeUnderTest]ManageController target)
        {
            Task<ActionResult> result = target.DisableTwoFactorAuthentication();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.DisableTwoFactorAuthenticationTest(ManageController)
        }

        /// <summary>Test stub per EnableTwoFactorAuthentication()</summary>
        [PexMethod]
        public Task<ActionResult> EnableTwoFactorAuthenticationTest([PexAssumeUnderTest]ManageController target)
        {
            Task<ActionResult> result = target.EnableTwoFactorAuthentication();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.EnableTwoFactorAuthenticationTest(ManageController)
        }

        /// <summary>Test stub per Index(Nullable`1&lt;ManageMessageId&gt;)</summary>
        [PexMethod]
        public Task<ActionResult> IndexTest([PexAssumeUnderTest]ManageController target, ManageController.ManageMessageId? message)
        {
            Task<ActionResult> result = target.Index(message);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.IndexTest(ManageController, Nullable`1<ManageMessageId>)
        }

        /// <summary>Test stub per LinkLogin(String)</summary>
        [PexMethod]
        public ActionResult LinkLoginTest([PexAssumeUnderTest]ManageController target, string provider)
        {
            ActionResult result = target.LinkLogin(provider);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.LinkLoginTest(ManageController, String)
        }

        /// <summary>Test stub per LinkLoginCallback()</summary>
        [PexMethod]
        public Task<ActionResult> LinkLoginCallbackTest([PexAssumeUnderTest]ManageController target)
        {
            Task<ActionResult> result = target.LinkLoginCallback();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.LinkLoginCallbackTest(ManageController)
        }

        /// <summary>Test stub per ManageLogins(Nullable`1&lt;ManageMessageId&gt;)</summary>
        [PexMethod]
        public Task<ActionResult> ManageLoginsTest([PexAssumeUnderTest]ManageController target, ManageController.ManageMessageId? message)
        {
            Task<ActionResult> result = target.ManageLogins(message);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.ManageLoginsTest(ManageController, Nullable`1<ManageMessageId>)
        }

        /// <summary>Test stub per RemoveLogin(String, String)</summary>
        [PexMethod]
        public Task<ActionResult> RemoveLoginTest(
            [PexAssumeUnderTest]ManageController target,
            string loginProvider,
            string providerKey
        )
        {
            Task<ActionResult> result = target.RemoveLogin(loginProvider, providerKey);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.RemoveLoginTest(ManageController, String, String)
        }

        /// <summary>Test stub per RemovePhoneNumber()</summary>
        [PexMethod]
        public Task<ActionResult> RemovePhoneNumberTest([PexAssumeUnderTest]ManageController target)
        {
            Task<ActionResult> result = target.RemovePhoneNumber();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.RemovePhoneNumberTest(ManageController)
        }

        /// <summary>Test stub per SetPassword()</summary>
        [PexMethod]
        public ActionResult SetPasswordTest([PexAssumeUnderTest]ManageController target)
        {
            ActionResult result = target.SetPassword();
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.SetPasswordTest(ManageController)
        }

        /// <summary>Test stub per SetPassword(SetPasswordViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> SetPasswordTest01([PexAssumeUnderTest]ManageController target, SetPasswordViewModel model)
        {
            Task<ActionResult> result = target.SetPassword(model);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.SetPasswordTest01(ManageController, SetPasswordViewModel)
        }

        /// <summary>Test stub per VerifyPhoneNumber(String)</summary>
        [PexMethod]
        public Task<ActionResult> VerifyPhoneNumberTest([PexAssumeUnderTest]ManageController target, string phoneNumber)
        {
            Task<ActionResult> result = target.VerifyPhoneNumber(phoneNumber);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.VerifyPhoneNumberTest(ManageController, String)
        }

        /// <summary>Test stub per VerifyPhoneNumber(VerifyPhoneNumberViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> VerifyPhoneNumberTest01([PexAssumeUnderTest]ManageController target, VerifyPhoneNumberViewModel model)
        {
            Task<ActionResult> result = target.VerifyPhoneNumber(model);
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.VerifyPhoneNumberTest01(ManageController, VerifyPhoneNumberViewModel)
        }

        /// <summary>Test stub per get_SignInManager()</summary>
        [PexMethod]
        public ApplicationSignInManager SignInManagerGetTest([PexAssumeUnderTest]ManageController target)
        {
            ApplicationSignInManager result = target.SignInManager;
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.SignInManagerGetTest(ManageController)
        }

        /// <summary>Test stub per get_UserManager()</summary>
        [PexMethod]
        public ApplicationUserManager UserManagerGetTest([PexAssumeUnderTest]ManageController target)
        {
            ApplicationUserManager result = target.UserManager;
            return result;
            // TODO: aggiungere asserzioni a metodo ManageControllerTest.UserManagerGetTest(ManageController)
        }
    }
}
