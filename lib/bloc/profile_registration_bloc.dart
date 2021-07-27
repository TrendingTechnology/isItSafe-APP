import 'dart:async';

class ProfileRegistrationBloc {
  late StreamController<bool> _registerController;
  Stream<bool> get registerStream => _registerController.stream;
  Sink<bool> get registerSink => _registerController.sink;

  ProfileRegistrationBloc() {
    _registerController = StreamController.broadcast();
  }

  void dispose() {
    _registerController.close();
  }

  enableRegisterButton(
      String dateBirth, String gender, String sexualOrientation) {
    bool isButtonEnabled = (dateBirth.isNotEmpty &&
        gender.isNotEmpty &&
        sexualOrientation.isNotEmpty);
    registerSink.add(isButtonEnabled);
  }
}
