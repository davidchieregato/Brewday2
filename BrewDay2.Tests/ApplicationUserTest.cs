using System;
using System.Security.Claims;
using System.Threading.Tasks;
using BrewDay2.Models;
using Microsoft.AspNet.Identity;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

// <copyright file="ApplicationUserTest.cs">Copyright ©  2018</copyright>

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ApplicationUser</summary>
    [TestClass]
    [PexClass(typeof(ApplicationUser))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class ApplicationUserTest
    {

        /// <summary>Test stub per GenerateUserIdentityAsync(UserManager`1&lt;ApplicationUser&gt;)</summary>
        [PexMethod]
        public Task<ClaimsIdentity> GenerateUserIdentityAsyncTest([PexAssumeUnderTest]ApplicationUser target, UserManager<ApplicationUser> manager)
        {
            Task<ClaimsIdentity> result = target.GenerateUserIdentityAsync(manager);
            return result;
            // TODO: aggiungere asserzioni a metodo ApplicationUserTest.GenerateUserIdentityAsyncTest(ApplicationUser, UserManager`1<ApplicationUser>)
        }
    }
}
