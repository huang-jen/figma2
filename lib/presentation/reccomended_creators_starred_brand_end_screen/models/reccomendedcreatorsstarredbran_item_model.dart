import '../../../core/app_export.dart';

/// This class is used in the [reccomendedcreatorsstarredbran_item_widget] screen.
class ReccomendedcreatorsstarredbranItemModel {
  ReccomendedcreatorsstarredbranItemModel({
    this.jaredFord,
    this.jaredFord1,
    this.jaredFord2,
    this.id,
  }) {
    jaredFord = jaredFord ?? ImageConstant.imgStar32;
    jaredFord1 = jaredFord1 ?? "Jared Ford";
    jaredFord2 = jaredFord2 ?? ImageConstant.imgImage18;
    id = id ?? "";
  }

  String? jaredFord;

  String? jaredFord1;

  String? jaredFord2;

  String? id;
}
