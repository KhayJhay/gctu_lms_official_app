import 'package:flutter/cupertino.dart';
import 'package:gctu_official_app/models/base_model.dart';
import 'package:gctu_official_app/shared/global.dart';

class HomeModel extends BaseModel{

  get isVisible => _isVisible;
  bool _isVisible = false;

  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;
  void isValidEmail(String input) {
    if (input == Global.validEmail.first) {
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }

}

