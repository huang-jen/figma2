import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/settings_brand_end_page/models/settings_brand_end_model.dart';

/// A provider class for the SettingsBrandEndPage.
///
/// This provider manages the state of the SettingsBrandEndPage, including the
/// current settingsBrandEndModelObj

// ignore_for_file: must_be_immutable
class SettingsBrandEndProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SettingsBrandEndModel settingsBrandEndModelObj = SettingsBrandEndModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void changeSwitchBox(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
