import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:clinicapp/services/appointment/appointment_service.dart';
import 'package:mobx/mobx.dart';

part 'appointment_controller.g.dart';

class AppointmentController = _AppointmentController
    with _$AppointmentController;

abstract class _AppointmentController with Store {
  final _appointmentService = AppointmentService();

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Appointment> appointments = ObservableList.of([]);

  _AppointmentController() {
    loadAppointments();
  }

  Future<void> loadAppointments() async {
    this.setLoadingStatus(true);
    this.appointments.clear();
    this.appointments.addAll(
          await _appointmentService.fetchAppointments().then((value) {
            this.setLoadingStatus(false);
            return value;
          }).catchError((err) {
            this.setLoadingStatus(false);
            print('!! > Error fetching appointments');
          }),
        );
  }

  @action
  void setLoadingStatus(value) {
    this.isLoading = value;
  }
}
