import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String _userName;
  String _password;
  bool _agree;

  String get userName => _userName;
  String get password => _password;
  bool get agree => _agree;

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void setAgree(bool agree) {
    _agree = agree;
    notifyListeners();
  }

}