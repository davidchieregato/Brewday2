using System;
using BrewDay2.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace BrewDay2.Controllers.Tests
{
    [TestClass()]
    public class AdditiviControllerTests
    {
        [TestMethod()]
        public void IndexTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void DetailsTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void CreateTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void CreateTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void EditTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void EditTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void DeleteTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void DeleteConfirmedTest()
        {
            throw new NotImplementedException();
        }
    }
}

namespace UnitTestProject.Controllers
{
    [TestClass]
    public class AdditiviControllerTests
    {


        [TestInitialize]
        public void TestInitialize()
        {

        }

        [TestMethod]
        public void TestMethod1()
        {
            // Arrange


            // Act
            AdditiviController additiviController = this.CreateAdditiviController();


            // Assert

        }

        private AdditiviController CreateAdditiviController()
        {
            return new AdditiviController();
        }
    }
}
