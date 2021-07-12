import 'dart:async';

class LoginBloc {
  late StreamController<bool> _buttonController;
  Stream<bool> get btnStream => _buttonController.stream;
  Sink<bool> get btnSink => _buttonController.sink;

  LoginBloc() {
    _buttonController = StreamController.broadcast();
  }

  enableButton({required String username, required String password}) {
    bool isBtnEnable = (username.isNotEmpty && password.isNotEmpty);
    btnSink.add(isBtnEnable);
  }

  dispose() {
    _buttonController.close();
  }
}
