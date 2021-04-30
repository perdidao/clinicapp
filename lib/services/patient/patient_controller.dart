import 'package:clinicapp/dao_factory.dart';
import 'package:clinicapp/services/patient/patient.dart';
import 'package:clinicapp/services/patient/patient_dao.dart';
import 'package:mobx/mobx.dart';

part 'patient_controller.g.dart';

class PatientController = _PatientController with _$PatientController;

abstract class _PatientController with Store {
  final PatientDao _patientDao = DaoFactory.instance!.patientDao;

  @observable
  bool isLoading = true;

  @observable
  ObservableList<Patient> patients = ObservableList.of([]);

  _PatientController() {
    loadPatients();
  }

  void createPatient(Patient patient) {
    this._patientDao.insertPatient(patient);
    loadPatients();
  }

  Future<void> loadPatients() async {
    setLoadingStatus(true);

    this._patientDao.listAllPatients().then((appointments) {
      this.patients.clear();
      this.patients.addAll(appointments);
    }).whenComplete(() => setLoadingStatus(false));
  }

  void deletePatient(int id) {
    this._patientDao.deletePatient(id);
    loadPatients();
  }

  @action
  void setLoadingStatus(value) {
    this.isLoading = value;
  }
}
