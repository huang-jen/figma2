import '../../../core/app_export.dart';

/// This class is used in the [framefortythree_item_widget] screen.
class FramefortythreeItemModel {
  FramefortythreeItemModel({
    this.tiktok,
    this.isSelected,
  }) {
    tiktok = tiktok ?? "Tiktok";
    isSelected = isSelected ?? false;
  }

  String? tiktok;

  bool? isSelected;
}
