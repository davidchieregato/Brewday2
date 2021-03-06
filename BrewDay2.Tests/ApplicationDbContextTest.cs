// <copyright file="ApplicationDbContextTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ApplicationDbContext</summary>
    [TestClass]
    [PexClass(typeof(ApplicationDbContext))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class ApplicationDbContextTest
    {

        /// <summary>Test stub per .ctor()</summary>
        [PexMethod]
        public ApplicationDbContext ConstructorTest()
        {
            ApplicationDbContext target = new ApplicationDbContext();
            return target;
        }

        /// <summary>Test stub per Create()</summary>
        [PexMethod]
        public ApplicationDbContext CreateTest()
        {
            ApplicationDbContext result = ApplicationDbContext.Create();
            return result;
        }
    }
}
