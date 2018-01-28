// <copyright file="LuppoliTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Models.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per Luppoli</summary>
    [TestClass]
    [PexClass(typeof(Luppoli))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public partial class LuppoliTest
    {
    }
}
