import '../../../core/app_export.dart';

/// This class is used in the [matchesautolayout_item_widget] screen.
class MatchesautolayoutItemModel {
  MatchesautolayoutItemModel({
    this.aaronLoeb,
    this.helloHowAreYou,
    this.aaronLoeb1,
    this.id,
  }) {
    aaronLoeb = aaronLoeb ?? "Aaron Loeb";
    helloHowAreYou = helloHowAreYou ?? "Hello, how are you?";
    aaronLoeb1 = aaronLoeb1 ?? ImageConstant.imgImage9;
    id = id ?? "";
  }

  String? aaronLoeb;

  String? helloHowAreYou;

  String? aaronLoeb1;

  String? id;
}
