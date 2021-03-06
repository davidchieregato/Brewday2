// <copyright file="LievitiTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Models.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per Lieviti</summary>
    [TestClass]
    [PexClass(typeof(Lieviti))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class LievitiTest
    {
    }
}
