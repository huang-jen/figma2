import 'models/matches_swiped_no_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/presentation/matches_swiped_no_page/matches_swiped_no_page.dart';
import 'package:hyptester2/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:hyptester2/widgets/app_bar/appbar_title.dart';
import 'package:hyptester2/widgets/app_bar/custom_app_bar.dart';
import 'provider/matches_swiped_no_tab_container_provider.dart';

class MatchesSwipedNoTabContainerScreen extends StatefulWidget {
  const MatchesSwipedNoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MatchesSwipedNoTabContainerScreenState createState() =>
      MatchesSwipedNoTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MatchesSwipedNoTabContainerProvider(),
      child: MatchesSwipedNoTabContainerScreen(),
    );
  }
}

class MatchesSwipedNoTabContainerScreenState
    extends State<MatchesSwipedNoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red100,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 740.v,
          child: TabBarView(
            controller: tabviewController,
            children: [
              MatchesSwipedNoPage.builder(context),
              MatchesSwipedNoPage.builder(context),
              MatchesSwipedNoPage.builder(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 72.v,
      leadingWidth: 72.h,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgImage2142x41,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 6.v,
          bottom: 24.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_matches".tr,
        margin: EdgeInsets.only(left: 51.h),
      ),
      actions: [
        Container(
          height: 38.v,
          width: 129.h,
          margin: EdgeInsets.fromLTRB(13.h, 18.v, 13.h, 16.v),
          child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            indicatorColor: appTheme.lightGreen10001,
            tabs: [
              Tab(
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconChat,
                  height: 20.v,
                  width: 22.h,
                  margin: EdgeInsets.only(
                    top: 7.v,
                    bottom: 11.v,
                  ),
                ),
              ),
              Tab(
                child: CustomImageView(
                  imagePath: ImageConstant.imgMdiCards,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 8.v,
                  ),
                ),
              ),
              Tab(
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsButton,
                  height: 25.v,
                  width: 26.h,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 9.v,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }
}
