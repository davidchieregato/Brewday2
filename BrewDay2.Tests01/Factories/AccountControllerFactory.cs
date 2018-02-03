using BrewDay2;
using System.Web.Mvc;
using BrewDay2.Controllers;
// <copyright file="AccountControllerFactory.cs">Copyright ©  2018</copyright>

using System;
using Microsoft.Pex.Framework;

namespace BrewDay2.Controllers
{
    /// <summary>A factory for BrewDay2.Controllers.AccountController instances</summary>
    public static partial class AccountControllerFactory
    {
        /// <summary>A factory for BrewDay2.Controllers.AccountController instances</summary>
        [PexFactoryMethod(typeof(AccountController))]
        public static AccountController Create(
            ApplicationUserManager userManager_applicationUserManager,
            ApplicationSignInManager signInManager_applicationSignInManager,
            IDependencyResolver value_iDependencyResolver,
            IActionInvoker value_iActionInvoker,
            ITempDataProvider value_iTempDataProvider,
            UrlHelper value_urlHelper,
            ViewEngineCollection value_viewEngineCollection,
            ControllerContext value_controllerContext,
            TempDataDictionary value_tempDataDictionary,
            bool value_b,
            IValueProvider value_iValueProvider,
            ViewDataDictionary value_viewDataDictionary
        )
        {
            AccountController accountController
               = new AccountController(userManager_applicationUserManager,
                                       signInManager_applicationSignInManager);
            ((Controller)accountController).Resolver = value_iDependencyResolver;
            ((Controller)accountController).ActionInvoker = value_iActionInvoker;
            ((Controller)accountController).TempDataProvider = value_iTempDataProvider;
            ((Controller)accountController).Url = value_urlHelper;
            ((Controller)accountController).ViewEngineCollection =
              value_viewEngineCollection;
            ((ControllerBase)accountController).ControllerContext = value_controllerContext;
            ((ControllerBase)accountController).TempData = value_tempDataDictionary;
            ((ControllerBase)accountController).ValidateRequest = value_b;
            ((ControllerBase)accountController).ValueProvider = value_iValueProvider;
            ((ControllerBase)accountController).ViewData = value_viewDataDictionary;
            return accountController;

            // TODO: Edit factory method of AccountController
            // This method should be able to configure the object in all possible ways.
            // Add as many parameters as needed,
            // and assign their values to each field by using the API.
        }
    }
}
