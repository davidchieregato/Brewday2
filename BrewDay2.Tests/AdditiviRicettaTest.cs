// <copyright file="AdditiviRicettaTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per AdditiviRicetta</summary>
    [TestClass]
    [PexClass(typeof(AdditiviRicetta))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class AdditiviRicettaTest
    {
    }
}
