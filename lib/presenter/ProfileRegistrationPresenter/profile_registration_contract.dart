abstract class ProfileRegistrationPageContract {
  onError({required String message});
  registrationSuccess();
  Future<void> navigateToForgot();
  choosePicture();
}

abstract class ProfilePresenterContract {
  doRegister();
  enableRegisterButton();
}
