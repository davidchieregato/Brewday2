// <copyright file="ZuccheriRicettaTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per ZuccheriRicetta</summary>
    [TestClass]
    [PexClass(typeof(ZuccheriRicetta))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class ZuccheriRicettaTest
    {
    }
}
