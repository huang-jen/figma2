import '../../../core/app_export.dart';

/// This class is used in the [framefortyfour_item_widget] screen.
class FramefortyfourItemModel {
  FramefortyfourItemModel({
    this.skincare,
    this.isSelected,
  }) {
    skincare = skincare ?? "Skincare";
    isSelected = isSelected ?? false;
  }

  String? skincare;

  bool? isSelected;
}
