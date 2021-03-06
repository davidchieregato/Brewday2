// <copyright file="MaltiRicettaTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Models.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per MaltiRicetta</summary>
    [TestClass]
    [PexClass(typeof(MaltiRicetta))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class MaltiRicettaTest
    {
    }
}
