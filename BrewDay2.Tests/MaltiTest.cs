// <copyright file="MaltiTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay.Models.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per Malti</summary>
    [TestClass]
    [PexClass(typeof(Malti))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class MaltiTest
    {
    }
}
