import 'package:clinicapp/dao_factory.dart';
import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:clinicapp/services/appointment/appointment_dao.dart';
import 'package:mobx/mobx.dart';

part 'appointment_controller.g.dart';

class AppointmentController = _AppointmentController
    with _$AppointmentController;

abstract class _AppointmentController with Store {
  final AppointmentDao _appointmentDao = DaoFactory.instance!.appointmentDao;

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Appointment> appointments = ObservableList.of([]);

  _AppointmentController() {
    loadAppointments();
  }

  Future<void> loadAppointments() async {
    setLoadingStatus(true);

    this._appointmentDao.listAllAppointments().then((appointments) {
      this.appointments.clear();
      this.appointments.addAll(appointments);
    }).whenComplete(() => setLoadingStatus(false));
  }

  @action
  void setLoadingStatus(value) {
    this.isLoading = value;
  }
}
