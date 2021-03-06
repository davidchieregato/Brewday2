// <copyright file="IndexViewModelTest.cs">Copyright ©  2018</copyright>

using System;
using BrewDay2.Models;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Tests
{
    /// <summary>Questa classe contiene unit test con parametri per IndexViewModel</summary>
    [TestClass]
    [PexClass(typeof(IndexViewModel))]
    [PexAllowedExceptionFromTypeUnderTest(typeof(ArgumentException), AcceptExceptionSubtypes = true)]
    [PexAllowedExceptionFromTypeUnderTest(typeof(InvalidOperationException))]
    public class IndexViewModelTest
    {
    }
}
