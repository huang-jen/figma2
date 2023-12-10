import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/matches_brand_end_page/models/matches_brand_end_model.dart';
import '../models/framefortythree4_item_model.dart';

/// A provider class for the MatchesBrandEndPage.
///
/// This provider manages the state of the MatchesBrandEndPage, including the
/// current matchesBrandEndModelObj

// ignore_for_file: must_be_immutable
class MatchesBrandEndProvider extends ChangeNotifier {
  MatchesBrandEndModel matchesBrandEndModelObj = MatchesBrandEndModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    matchesBrandEndModelObj.framefortythree4ItemList.forEach((element) {
      element.isSelected = false;
    });
    matchesBrandEndModelObj.framefortythree4ItemList[index].isSelected = value;
    notifyListeners();
  }
}
