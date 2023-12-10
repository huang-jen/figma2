import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/match_preference_screen/models/match_preference_model.dart';

/// A provider class for the MatchPreferenceScreen.
///
/// This provider manages the state of the MatchPreferenceScreen, including the
/// current matchPreferenceModelObj
class MatchPreferenceProvider extends ChangeNotifier {
  MatchPreferenceModel matchPreferenceModelObj = MatchPreferenceModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch3 = value;
    notifyListeners();
  }

  void changeSwitchBox4(bool value) {
    isSelectedSwitch4 = value;
    notifyListeners();
  }
}
