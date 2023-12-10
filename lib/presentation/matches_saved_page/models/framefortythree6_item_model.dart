import '../../../core/app_export.dart';

/// This class is used in the [framefortythree6_item_widget] screen.
class Framefortythree6ItemModel {
  Framefortythree6ItemModel({
    this.makeup,
    this.isSelected,
  }) {
    makeup = makeup ?? "Makeup";
    isSelected = isSelected ?? false;
  }

  String? makeup;

  bool? isSelected;
}
