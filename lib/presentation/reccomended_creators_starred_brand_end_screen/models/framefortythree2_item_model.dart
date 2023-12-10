import '../../../core/app_export.dart';

/// This class is used in the [framefortythree2_item_widget] screen.
class Framefortythree2ItemModel {
  Framefortythree2ItemModel({
    this.tiktok,
    this.isSelected,
  }) {
    tiktok = tiktok ?? "Tiktok";
    isSelected = isSelected ?? false;
  }

  String? tiktok;

  bool? isSelected;
}
