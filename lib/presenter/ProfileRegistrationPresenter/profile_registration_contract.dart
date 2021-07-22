abstract class ProfileRegistrationPageContract {
  onError({required String message});
  registrationSuccess();
  navigateToHome();
  navigateToForgot();
}

abstract class ProfilePresenterContract {
  doRegister();
  enableRegisterButton();
}
