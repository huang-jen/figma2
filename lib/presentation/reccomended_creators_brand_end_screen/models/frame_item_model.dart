import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.tiktok,
    this.isSelected,
  }) {
    tiktok = tiktok ?? "Tiktok";
    isSelected = isSelected ?? false;
  }

  String? tiktok;

  bool? isSelected;
}
