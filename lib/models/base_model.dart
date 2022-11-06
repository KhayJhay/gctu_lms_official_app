import 'package:flutter/material.dart';
import 'package:gctu_official_app/enums/enums.dart';
class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}