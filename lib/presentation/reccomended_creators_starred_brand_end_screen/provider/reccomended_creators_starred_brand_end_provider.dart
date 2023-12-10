import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/reccomended_creators_starred_brand_end_screen/models/reccomended_creators_starred_brand_end_model.dart';
import '../models/framefortythree2_item_model.dart';
import '../models/reccomendedcreatorsstarredbran_item_model.dart';

/// A provider class for the ReccomendedCreatorsStarredBrandEndScreen.
///
/// This provider manages the state of the ReccomendedCreatorsStarredBrandEndScreen, including the
/// current reccomendedCreatorsStarredBrandEndModelObj

// ignore_for_file: must_be_immutable
class ReccomendedCreatorsStarredBrandEndProvider extends ChangeNotifier {
  ReccomendedCreatorsStarredBrandEndModel
      reccomendedCreatorsStarredBrandEndModelObj =
      ReccomendedCreatorsStarredBrandEndModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    reccomendedCreatorsStarredBrandEndModelObj.framefortythree2ItemList
        .forEach((element) {
      element.isSelected = false;
    });
    reccomendedCreatorsStarredBrandEndModelObj
        .framefortythree2ItemList[index].isSelected = value;
    notifyListeners();
  }
}
