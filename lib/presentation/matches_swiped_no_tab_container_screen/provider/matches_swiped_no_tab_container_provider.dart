import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/matches_swiped_no_tab_container_screen/models/matches_swiped_no_tab_container_model.dart';

/// A provider class for the MatchesSwipedNoTabContainerScreen.
///
/// This provider manages the state of the MatchesSwipedNoTabContainerScreen, including the
/// current matchesSwipedNoTabContainerModelObj
class MatchesSwipedNoTabContainerProvider extends ChangeNotifier {
  MatchesSwipedNoTabContainerModel matchesSwipedNoTabContainerModelObj =
      MatchesSwipedNoTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
