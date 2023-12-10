import '../../../core/app_export.dart';

/// This class is used in the [framefortythree4_item_widget] screen.
class Framefortythree4ItemModel {
  Framefortythree4ItemModel({
    this.tiktok,
    this.isSelected,
  }) {
    tiktok = tiktok ?? "Tiktok";
    isSelected = isSelected ?? false;
  }

  String? tiktok;

  bool? isSelected;
}
