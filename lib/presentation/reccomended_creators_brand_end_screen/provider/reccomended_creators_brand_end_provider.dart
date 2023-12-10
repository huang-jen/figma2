import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/reccomended_creators_brand_end_screen/models/reccomended_creators_brand_end_model.dart';
import '../models/framefortythree_item_model.dart';
import '../models/frame_item_model.dart';

/// A provider class for the ReccomendedCreatorsBrandEndScreen.
///
/// This provider manages the state of the ReccomendedCreatorsBrandEndScreen, including the
/// current reccomendedCreatorsBrandEndModelObj

// ignore_for_file: must_be_immutable
class ReccomendedCreatorsBrandEndProvider extends ChangeNotifier {
  ReccomendedCreatorsBrandEndModel reccomendedCreatorsBrandEndModelObj =
      ReccomendedCreatorsBrandEndModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView(
    int index,
    bool value,
  ) {
    reccomendedCreatorsBrandEndModelObj.framefortythreeItemList
        .forEach((element) {
      element.isSelected = false;
    });
    reccomendedCreatorsBrandEndModelObj
        .framefortythreeItemList[index].isSelected = value;
    notifyListeners();
  }
}
