import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/matches_swiped_no_page/models/matches_swiped_no_model.dart';
import '../models/framefortyfour_item_model.dart';

/// A provider class for the MatchesSwipedNoPage.
///
/// This provider manages the state of the MatchesSwipedNoPage, including the
/// current matchesSwipedNoModelObj

// ignore_for_file: must_be_immutable
class MatchesSwipedNoProvider extends ChangeNotifier {
  MatchesSwipedNoModel matchesSwipedNoModelObj = MatchesSwipedNoModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    matchesSwipedNoModelObj.framefortyfourItemList.forEach((element) {
      element.isSelected = false;
    });
    matchesSwipedNoModelObj.framefortyfourItemList[index].isSelected = value;
    notifyListeners();
  }
}
