using System;
using System.Threading.Tasks;
using System.Web.Mvc;
using BrewDay2.Controllers;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="AccountControllerTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per AccountController</summary>
    [TestClass]
    [PexClass(typeof(AccountController))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class AccountControllerTest
    {

        /// <summary>Test stub per .ctor(ApplicationUserManager, ApplicationSignInManager)</summary>
        [PexMethod]
        public AccountController ConstructorTest(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            AccountController target = new AccountController(userManager, signInManager);
            return target;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ConstructorTest(ApplicationUserManager, ApplicationSignInManager)
        }

        /// <summary>Test stub per ConfirmEmail(String, String)</summary>
        [PexMethod]
        public Task<ActionResult> ConfirmEmailTest(
            [PexAssumeUnderTest]AccountController target,
            string userId,
            string code
        )
        {
            Task<ActionResult> result = target.ConfirmEmail(userId, code);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ConfirmEmailTest(AccountController, String, String)
        }

        /// <summary>Test stub per ExternalLogin(String, String)</summary>
        [PexMethod]
        public ActionResult ExternalLoginTest(
            [PexAssumeUnderTest]AccountController target,
            string provider,
            string returnUrl
        )
        {
            ActionResult result = target.ExternalLogin(provider, returnUrl);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ExternalLoginTest(AccountController, String, String)
        }

        /// <summary>Test stub per ExternalLoginCallback(String)</summary>
        [PexMethod]
        public Task<ActionResult> ExternalLoginCallbackTest([PexAssumeUnderTest]AccountController target, string returnUrl)
        {
            Task<ActionResult> result = target.ExternalLoginCallback(returnUrl);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ExternalLoginCallbackTest(AccountController, String)
        }

        /// <summary>Test stub per ExternalLoginConfirmation(ExternalLoginConfirmationViewModel, String)</summary>
        [PexMethod]
        public Task<ActionResult> ExternalLoginConfirmationTest(
            [PexAssumeUnderTest]AccountController target,
            ExternalLoginConfirmationViewModel model,
            string returnUrl
        )
        {
            Task<ActionResult> result = target.ExternalLoginConfirmation(model, returnUrl);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ExternalLoginConfirmationTest(AccountController, ExternalLoginConfirmationViewModel, String)
        }

        /// <summary>Test stub per ExternalLoginFailure()</summary>
        [PexMethod]
        public ActionResult ExternalLoginFailureTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.ExternalLoginFailure();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ExternalLoginFailureTest(AccountController)
        }

        /// <summary>Test stub per ForgotPassword()</summary>
        [PexMethod]
        public ActionResult ForgotPasswordTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.ForgotPassword();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ForgotPasswordTest(AccountController)
        }

        /// <summary>Test stub per ForgotPassword(ForgotPasswordViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> ForgotPasswordTest01([PexAssumeUnderTest]AccountController target, ForgotPasswordViewModel model)
        {
            Task<ActionResult> result = target.ForgotPassword(model);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ForgotPasswordTest01(AccountController, ForgotPasswordViewModel)
        }

        /// <summary>Test stub per ForgotPasswordConfirmation()</summary>
        [PexMethod]
        public ActionResult ForgotPasswordConfirmationTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.ForgotPasswordConfirmation();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ForgotPasswordConfirmationTest(AccountController)
        }

        /// <summary>Test stub per LogOff()</summary>
        [PexMethod]
        public ActionResult LogOffTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.LogOff();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.LogOffTest(AccountController)
        }

        /// <summary>Test stub per Login(String)</summary>
        [PexMethod]
        public ActionResult LoginTest([PexAssumeUnderTest]AccountController target, string returnUrl)
        {
            ActionResult result = target.Login(returnUrl);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.LoginTest(AccountController, String)
        }

        /// <summary>Test stub per Login(LoginViewModel, String)</summary>
        [PexMethod]
        public Task<ActionResult> LoginTest01(
            [PexAssumeUnderTest]AccountController target,
            LoginViewModel model,
            string returnUrl
        )
        {
            Task<ActionResult> result = target.Login(model, returnUrl);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.LoginTest01(AccountController, LoginViewModel, String)
        }

        /// <summary>Test stub per Register()</summary>
        [PexMethod]
        public ActionResult RegisterTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.Register();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.RegisterTest(AccountController)
        }

        /// <summary>Test stub per Register(RegisterViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> RegisterTest01([PexAssumeUnderTest]AccountController target, RegisterViewModel model)
        {
            Task<ActionResult> result = target.Register(model);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.RegisterTest01(AccountController, RegisterViewModel)
        }

        /// <summary>Test stub per ResetPassword(String)</summary>
        [PexMethod]
        public ActionResult ResetPasswordTest([PexAssumeUnderTest]AccountController target, string code)
        {
            ActionResult result = target.ResetPassword(code);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ResetPasswordTest(AccountController, String)
        }

        /// <summary>Test stub per ResetPassword(ResetPasswordViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> ResetPasswordTest01([PexAssumeUnderTest]AccountController target, ResetPasswordViewModel model)
        {
            Task<ActionResult> result = target.ResetPassword(model);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ResetPasswordTest01(AccountController, ResetPasswordViewModel)
        }

        /// <summary>Test stub per ResetPasswordConfirmation()</summary>
        [PexMethod]
        public ActionResult ResetPasswordConfirmationTest([PexAssumeUnderTest]AccountController target)
        {
            ActionResult result = target.ResetPasswordConfirmation();
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.ResetPasswordConfirmationTest(AccountController)
        }

        /// <summary>Test stub per SendCode(String, Boolean)</summary>
        [PexMethod]
        public Task<ActionResult> SendCodeTest(
            [PexAssumeUnderTest]AccountController target,
            string returnUrl,
            bool rememberMe
        )
        {
            Task<ActionResult> result = target.SendCode(returnUrl, rememberMe);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.SendCodeTest(AccountController, String, Boolean)
        }

        /// <summary>Test stub per SendCode(SendCodeViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> SendCodeTest01([PexAssumeUnderTest]AccountController target, SendCodeViewModel model)
        {
            Task<ActionResult> result = target.SendCode(model);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.SendCodeTest01(AccountController, SendCodeViewModel)
        }

        /// <summary>Test stub per VerifyCode(String, String, Boolean)</summary>
        [PexMethod]
        public Task<ActionResult> VerifyCodeTest(
            [PexAssumeUnderTest]AccountController target,
            string provider,
            string returnUrl,
            bool rememberMe
        )
        {
            Task<ActionResult> result = target.VerifyCode(provider, returnUrl, rememberMe);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.VerifyCodeTest(AccountController, String, String, Boolean)
        }

        /// <summary>Test stub per VerifyCode(VerifyCodeViewModel)</summary>
        [PexMethod]
        public Task<ActionResult> VerifyCodeTest01([PexAssumeUnderTest]AccountController target, VerifyCodeViewModel model)
        {
            Task<ActionResult> result = target.VerifyCode(model);
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.VerifyCodeTest01(AccountController, VerifyCodeViewModel)
        }

        /// <summary>Test stub per get_SignInManager()</summary>
        [PexMethod]
        public ApplicationSignInManager SignInManagerGetTest([PexAssumeUnderTest]AccountController target)
        {
            ApplicationSignInManager result = target.SignInManager;
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.SignInManagerGetTest(AccountController)
        }

        /// <summary>Test stub per get_UserManager()</summary>
        [PexMethod]
        public ApplicationUserManager UserManagerGetTest([PexAssumeUnderTest]AccountController target)
        {
            ApplicationUserManager result = target.UserManager;
            return result;
            // TODO: aggiungere asserzioni a metodo AccountControllerTest.UserManagerGetTest(AccountController)
        }
    }
}
