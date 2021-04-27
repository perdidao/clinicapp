// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppointmentController on _AppointmentController, Store {
  final _$isLoadingAtom = Atom(name: '_AppointmentController.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$appointmentsAtom = Atom(name: '_AppointmentController.appointments');

  @override
  ObservableList<Appointment> get appointments {
    _$appointmentsAtom.reportRead();
    return super.appointments;
  }

  @override
  set appointments(ObservableList<Appointment> value) {
    _$appointmentsAtom.reportWrite(value, super.appointments, () {
      super.appointments = value;
    });
  }

  final _$_AppointmentControllerActionController =
      ActionController(name: '_AppointmentController');

  @override
  void setLoadingStatus(dynamic value) {
    final _$actionInfo = _$_AppointmentControllerActionController.startAction(
        name: '_AppointmentController.setLoadingStatus');
    try {
      return super.setLoadingStatus(value);
    } finally {
      _$_AppointmentControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
appointments: ${appointments}
    ''';
  }
}
