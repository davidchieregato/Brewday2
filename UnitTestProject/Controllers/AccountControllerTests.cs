using System;
using BrewDay2.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace BrewDay2.Controllers.Tests
{
    [TestClass()]
    public class AccountControllerTests
    {
        [TestMethod()]
        public void AccountControllerTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void AccountControllerTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void AccountControllerTest2()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void LoginTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void LoginTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void VerifyCodeTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void VerifyCodeTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void RegisterTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void RegisterTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ConfirmEmailTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ForgotPasswordTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ForgotPasswordTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ForgotPasswordConfirmationTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ResetPasswordTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ResetPasswordTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ResetPasswordConfirmationTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ExternalLoginTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void SendCodeTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void SendCodeTest1()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ExternalLoginCallbackTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ExternalLoginConfirmationTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void LogOffTest()
        {
            throw new NotImplementedException();
        }

        [TestMethod()]
        public void ExternalLoginFailureTest()
        {
            throw new NotImplementedException();
        }
    }
}

namespace UnitTestProject.Controllers
{
    [TestClass]
    public class AccountControllerTests
    {
        private MockRepository mockRepository;



        [TestInitialize]
        public void TestInitialize()
        {
            this.mockRepository = new MockRepository(MockBehavior.Strict);


        }

        [TestCleanup]
        public void TestCleanup()
        {
            this.mockRepository.VerifyAll();
        }

        [TestMethod]
        public void TestMethod1()
        {
            // Arrange


            // Act
            AccountController accountController = this.CreateAccountController();


            // Assert
            Assert.IsNotNull(accountController);
        }

        private AccountController CreateAccountController()
        {
            return new AccountController();
        }
    }
}
