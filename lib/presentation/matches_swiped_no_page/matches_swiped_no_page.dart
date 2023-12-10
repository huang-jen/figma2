import '../matches_swiped_no_page/widgets/framefortyfour_item_widget.dart';
import 'models/framefortyfour_item_model.dart';
import 'models/matches_swiped_no_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/custom_elevated_button.dart';
import 'package:hyptester2/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'provider/matches_swiped_no_provider.dart';

// ignore_for_file: must_be_immutable
class MatchesSwipedNoPage extends StatefulWidget {
  const MatchesSwipedNoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MatchesSwipedNoPageState createState() => MatchesSwipedNoPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MatchesSwipedNoProvider(),
      child: MatchesSwipedNoPage(),
    );
  }
}

class MatchesSwipedNoPageState extends State<MatchesSwipedNoPage>
    with AutomaticKeepAliveClientMixin<MatchesSwipedNoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.red100,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillRed100,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              Column(
                children: [
                  SizedBox(
                    height: 593.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup102,
                          height: 550.v,
                          width: 390.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: theme.colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder50,
                            ),
                            child: Container(
                              height: 593.v,
                              width: 331.h,
                              decoration:
                                  AppDecoration.outlineBlack9001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder50,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.h,
                                        top: 30.v,
                                        right: 16.h,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 172.v,
                                              width: 169.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child:
                                                        OutlineGradientButton(
                                                      padding: EdgeInsets.only(
                                                        left: 7.h,
                                                        top: 7.v,
                                                        right: 7.h,
                                                        bottom: 7.v,
                                                      ),
                                                      strokeWidth: 7.h,
                                                      gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.red20001,
                                                          appTheme
                                                              .lightGreen100,
                                                          appTheme.blue200,
                                                        ],
                                                      ),
                                                      corners: Corners(
                                                        topLeft:
                                                            Radius.circular(86),
                                                        topRight:
                                                            Radius.circular(86),
                                                        bottomLeft:
                                                            Radius.circular(86),
                                                        bottomRight:
                                                            Radius.circular(86),
                                                      ),
                                                      child: Container(
                                                        height: 172.v,
                                                        width: 169.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            86.h,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 133.v,
                                                      width: 131.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage21,
                                                            height: 133.v,
                                                            width: 130.h,
                                                            radius: BorderRadius
                                                                .circular(
                                                              65.h,
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage7,
                                                            height: 133.v,
                                                            width: 130.h,
                                                            radius: BorderRadius
                                                                .circular(
                                                              65.h,
                                                            ),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 29.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_tina_chow".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_actress".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray50001Medium,
                                            ),
                                          ),
                                          SizedBox(height: 37.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage38,
                                                  height: 29.adaptSize,
                                                  width: 29.adaptSize,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 7.v,
                                                    bottom: 6.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_13_2k_followers".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTiktokLogo1f4,
                                                  height: 29.v,
                                                  width: 28.h,
                                                  margin: EdgeInsets.only(
                                                      left: 18.h),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 7.v,
                                                    bottom: 6.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_41k_followers".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 23.v),
                                          Text(
                                            "msg_brands_i_work_with".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 9.v),
                                          Opacity(
                                            opacity: 0.7,
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame124,
                                              height: 24.v,
                                              width: 86.h,
                                            ),
                                          ),
                                          SizedBox(height: 25.v),
                                          _buildFrameFortyFour(context),
                                          SizedBox(height: 23.v),
                                          Text(
                                            "lbl_bio".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 2.v),
                                          Text(
                                            "msg_lorem_ipsum_dolor".tr,
                                            textAlign: TextAlign.justify,
                                            style: CustomTextStyles
                                                .bodyMediumOpenSansHebrewGray50001,
                                          ),
                                          Spacer(
                                            flex: 46,
                                          ),
                                          Spacer(
                                            flex: 53,
                                          ),
                                          Text(
                                            "lbl_links".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(
                                            width: 80.h,
                                            child: Text(
                                              "lbl_websitelink".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              style: CustomTextStyles
                                                  .bodyMediumOpenSansHebrewGray800,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.h,
                                        vertical: 4.v,
                                      ),
                                      decoration: AppDecoration.outlineBlack9001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder50,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 22.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 172.v,
                                              width: 169.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child:
                                                        OutlineGradientButton(
                                                      padding: EdgeInsets.only(
                                                        left: 7.h,
                                                        top: 7.v,
                                                        right: 7.h,
                                                        bottom: 7.v,
                                                      ),
                                                      strokeWidth: 7.h,
                                                      gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.red20001,
                                                          appTheme
                                                              .lightGreen100,
                                                          appTheme.blue200,
                                                        ],
                                                      ),
                                                      corners: Corners(
                                                        topLeft:
                                                            Radius.circular(86),
                                                        topRight:
                                                            Radius.circular(86),
                                                        bottomLeft:
                                                            Radius.circular(86),
                                                        bottomRight:
                                                            Radius.circular(86),
                                                      ),
                                                      child: Container(
                                                        height: 172.v,
                                                        width: 169.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            86.h,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage12135x133,
                                                    height: 135.v,
                                                    width: 133.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                      66.h,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 26.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_grace_finer".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "msg_beauty_influencer2".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray50001,
                                            ),
                                          ),
                                          SizedBox(height: 19.v),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Row(
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage38,
                                                  height: 29.adaptSize,
                                                  width: 29.adaptSize,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 7.v,
                                                    bottom: 6.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_7k_followers".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTiktokLogo1f4,
                                                  height: 29.v,
                                                  width: 28.h,
                                                  margin: EdgeInsets.only(
                                                      left: 17.h),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 7.v,
                                                    bottom: 6.v,
                                                  ),
                                                  child: Text(
                                                    "lbl_41k_followers".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 13.v),
                                          Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                              "msg_brands_i_work_with".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumPoppins,
                                            ),
                                          ),
                                          SizedBox(height: 9.v),
                                          Opacity(
                                            opacity: 0.7,
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame124,
                                              height: 24.v,
                                              width: 86.h,
                                              margin:
                                                  EdgeInsets.only(left: 1.h),
                                            ),
                                          ),
                                          SizedBox(height: 19.v),
                                          Text(
                                            "lbl_tags".tr,
                                            style: CustomTextStyles
                                                .titleSmallSemiBold,
                                          ),
                                          SizedBox(height: 8.v),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 16.h),
                                            child: Row(
                                              children: [
                                                CustomElevatedButton(
                                                  width: 54.h,
                                                  text: "lbl_tiktok".tr,
                                                ),
                                                Container(
                                                  width: 72.h,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                    vertical: 1.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillLightGreen
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder10,
                                                  ),
                                                  child: Text(
                                                    "lbl_skincare".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallPoppinsLightgreen900,
                                                  ),
                                                ),
                                                Container(
                                                  width: 88.h,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h),
                                                  decoration: AppDecoration
                                                      .fillOrange
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder10,
                                                  ),
                                                  child: Text(
                                                    "lbl_advertising".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallPoppinsBluegray800,
                                                  ),
                                                ),
                                                Container(
                                                  width: 56.h,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                    vertical: 1.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillRed
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder10,
                                                  ),
                                                  child: Text(
                                                    "lbl_demo".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallPoppinsPrimaryContainer,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 9.v),
                                          Container(
                                            width: 75.h,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 15.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillDeepPurple
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder10,
                                            ),
                                            child: Text(
                                              "lbl_tutorial".tr,
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsDeeppurple600,
                                            ),
                                          ),
                                          SizedBox(height: 14.v),
                                          Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                              "lbl_bio".tr,
                                              style: CustomTextStyles
                                                  .titleSmallSemiBold,
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          Container(
                                            width: 283.h,
                                            margin: EdgeInsets.only(
                                              left: 1.h,
                                              right: 16.h,
                                            ),
                                            child: Text(
                                              "msg_lorem_ipsum_dolor2".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumOpenSansHebrewGray50001,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildFrameFiftySeven(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFortyFour(BuildContext context) {
    return Consumer<MatchesSwipedNoProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
            provider.matchesSwipedNoModelObj.framefortyfourItemList.length,
            (index) {
              FramefortyfourItemModel model = provider
                  .matchesSwipedNoModelObj.framefortyfourItemList[index];

              return FramefortyfourItemWidget(
                model,
                onSelectedChipView: (value) {
                  provider.onSelectedChipView(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrameFiftySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(20.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSkipMatch,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 3.h,
                top: 3.v,
                right: 3.h,
                bottom: 3.v,
              ),
              strokeWidth: 3.h,
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1.52),
                colors: [
                  appTheme.red20001.withOpacity(0.5),
                  appTheme.blueGray2007f,
                  appTheme.blue2007f,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(31),
                topRight: Radius.circular(31),
                bottomLeft: Radius.circular(31),
                bottomRight: Radius.circular(31),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.outline1.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder33,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_message_me".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(19.h),
              decoration: IconButtonStyleHelper.fillDeepPurple,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame56,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
