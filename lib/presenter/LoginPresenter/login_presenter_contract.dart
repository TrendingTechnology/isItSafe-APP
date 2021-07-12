abstract class LoginPageContract {
  onError({required String message});
  loginSuccess();
  navigateToRegister();
  navigateToForgotPassword();
}

abstract class LoginPresenterContract {
  doLogin();
  enableButton();
}
