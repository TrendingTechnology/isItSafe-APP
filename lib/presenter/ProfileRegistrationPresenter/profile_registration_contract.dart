abstract class ProfileRegistrationPageContract {
  onError({required String message});
  registrationSuccess();
  navigateToForgot();
  choosePicture();
}

abstract class ProfilePresenterContract {
  doRegister();
  enableRegisterButton();
}
