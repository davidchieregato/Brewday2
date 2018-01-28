// <copyright file="ForgotPasswordViewModelTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay.Models.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ForgotPasswordViewModel</summary>
    [TestClass]
    [PexClass(typeof(ForgotPasswordViewModel))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class ForgotPasswordViewModelTest
    {
    }
}
