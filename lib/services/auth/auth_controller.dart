import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

abstract class _AuthController with Store {
  @observable
  bool isLoading = false;

  Future<bool> loginAction(context) async {
    this.setLoadingStatus(true);
    Future.delayed(Duration(seconds: 1), () {
      this.setLoadingStatus(false);
      Navigator.pushNamed(context, '/');
      return true;
    });

    return false;
  }

  @action
  void setLoadingStatus(value) {
    this.isLoading = value;
  }
}
