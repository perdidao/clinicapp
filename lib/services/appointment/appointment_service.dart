import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:dio/dio.dart';

class AppointmentService {
  Future<List<Appointment>> fetchAppointments() async {
    try {
      var response = await Dio()
          .get('https://run.mocky.io/v3/08e557c5-b1d2-4612-abc9-23063d4394b5');

      return (response.data as List)
          .map((item) => Appointment.fromJson(item))
          .toList();
    } catch (e) {
      print(e);

      return List<Appointment>.empty();
    }
  }
}
