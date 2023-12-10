import 'package:flutter/material.dart';
import 'package:hyptester2/presentation/match_preference_screen/match_preference_screen.dart';
import 'package:hyptester2/presentation/reccomended_creators_brand_end_screen/reccomended_creators_brand_end_screen.dart';
import 'package:hyptester2/presentation/reccomended_creators_starred_brand_end_screen/reccomended_creators_starred_brand_end_screen.dart';
import 'package:hyptester2/presentation/matches_swiped_no_tab_container_screen/matches_swiped_no_tab_container_screen.dart';
import 'package:hyptester2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String settingsBrandEndPage = '/settings_brand_end_page';

  static const String matchPreferenceScreen = '/match_preference_screen';

  static const String reccomendedCreatorsBrandEndScreen =
      '/reccomended_creators_brand_end_screen';

  static const String reccomendedCreatorsStarredBrandEndScreen =
      '/reccomended_creators_starred_brand_end_screen';

  static const String messagesBrandEndPage = '/messages_brand_end_page';

  static const String matchesSwipedNoPage = '/matches_swiped_no_page';

  static const String matchesSwipedNoTabContainerScreen =
      '/matches_swiped_no_tab_container_screen';

  static const String matchesBrandEndPage = '/matches_brand_end_page';

  static const String matchesSavedPage = '/matches_saved_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        matchPreferenceScreen: MatchPreferenceScreen.builder,
        reccomendedCreatorsBrandEndScreen:
            ReccomendedCreatorsBrandEndScreen.builder,
        reccomendedCreatorsStarredBrandEndScreen:
            ReccomendedCreatorsStarredBrandEndScreen.builder,
        matchesSwipedNoTabContainerScreen:
            MatchesSwipedNoTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ReccomendedCreatorsBrandEndScreen.builder
      };
}
