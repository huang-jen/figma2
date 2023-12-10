import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/matches_saved_page/models/matches_saved_model.dart';
import '../models/framefortythree6_item_model.dart';

/// A provider class for the MatchesSavedPage.
///
/// This provider manages the state of the MatchesSavedPage, including the
/// current matchesSavedModelObj

// ignore_for_file: must_be_immutable
class MatchesSavedProvider extends ChangeNotifier {
  MatchesSavedModel matchesSavedModelObj = MatchesSavedModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    matchesSavedModelObj.framefortythree6ItemList.forEach((element) {
      element.isSelected = false;
    });
    matchesSavedModelObj.framefortythree6ItemList[index].isSelected = value;
    notifyListeners();
  }
}
