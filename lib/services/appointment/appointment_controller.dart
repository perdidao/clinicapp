import 'package:mobx/mobx.dart';

part 'appointment_controller.g.dart';

class AppointmentController = _AppointmentController
    with _$AppointmentController;

abstract class _AppointmentController with Store {
  @observable
  bool isLoading = true;

  @action
  void setLoadingStatus(value) {
    this.isLoading = value;
  }
}
