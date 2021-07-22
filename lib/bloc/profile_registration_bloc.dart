import 'dart:async';

class ProfileRegistrationBloc {
  late StreamController<bool> _registerController;
  Stream<bool> get registerStream => _registerController.stream;
  Sink<bool> get registerSink => _registerController.sink;

  void dispose() {
    _registerController.close();
  }
}
