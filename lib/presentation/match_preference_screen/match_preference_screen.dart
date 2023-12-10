import 'models/match_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/app_bar/appbar_leading_image.dart';
import 'package:hyptester2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hyptester2/widgets/app_bar/custom_app_bar.dart';
import 'package:hyptester2/widgets/custom_switch.dart';
import 'provider/match_preference_provider.dart';

class MatchPreferenceScreen extends StatefulWidget {
  const MatchPreferenceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MatchPreferenceScreenState createState() => MatchPreferenceScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MatchPreferenceProvider(),
      child: MatchPreferenceScreen(),
    );
  }
}

class MatchPreferenceScreenState extends State<MatchPreferenceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildVideosAndMedia(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 27.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 301.h,
                      margin: EdgeInsets.only(
                        left: 12.h,
                        right: 42.h,
                      ),
                      child: Text(
                        "msg_before_we_show".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodySmallOpenSansHebrewBluegray400,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    _buildNineteen(context),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_age".tr,
                        style: CustomTextStyles.labelLargeOpenSans,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildSeventyOne(context),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 37.h,
                        right: 89.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_18_years".tr,
                            style: CustomTextStyles
                                .bodySmallOpenSansHebrewRed20001,
                          ),
                          Text(
                            "lbl_55_years".tr,
                            style: CustomTextStyles
                                .bodySmallOpenSansHebrewRed20001,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_followers".tr,
                        style: CustomTextStyles.labelLargeOpenSans,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildSeventyTwo(context),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_price".tr,
                        style: CustomTextStyles.labelLargeOpenSans,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildSeventyThree(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVideosAndMedia(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomAppBar(
            height: 26.v,
            leadingWidth: 57.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgVectorPrimary,
              margin: EdgeInsets.only(
                left: 29.h,
                bottom: 8.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "msg_match_preferences".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 2.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "msg_no_political_content".tr,
                  style: CustomTextStyles.bodyMediumOpenSansHebrewGray800,
                ),
              ),
              Selector<MatchPreferenceProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch,
                builder: (context, isSelectedSwitch, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<MatchPreferenceProvider>()
                          .changeSwitchBox(value);
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.blueGray10001,
          ),
          SizedBox(height: 9.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 7.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "lbl_no_nude_content".tr,
                  style: CustomTextStyles.bodyMediumOpenSansHebrewGray800,
                ),
              ),
              Selector<MatchPreferenceProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch1,
                builder: (context, isSelectedSwitch1, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context
                          .read<MatchPreferenceProvider>()
                          .changeSwitchBox1(value);
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.blueGray10001,
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "msg_no_explicit_content".tr,
                  style: CustomTextStyles.bodyMediumOpenSansHebrewGray800,
                ),
              ),
              Selector<MatchPreferenceProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<MatchPreferenceProvider>()
                          .changeSwitchBox2(value);
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Divider(
            color: appTheme.blueGray10001,
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 6.v,
                ),
                child: Text(
                  "msg_no_explicit_language".tr,
                  style: CustomTextStyles.bodyMediumOpenSansHebrewGray800,
                ),
              ),
              Selector<MatchPreferenceProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch3,
                builder: (context, isSelectedSwitch3, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch3,
                    onChange: (value) {
                      context
                          .read<MatchPreferenceProvider>()
                          .changeSwitchBox3(value);
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Divider(
            color: appTheme.blueGray10001,
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 7.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "msg_no_violent_content".tr,
                  style: CustomTextStyles.bodyMediumOpenSansHebrewGray800,
                ),
              ),
              Selector<MatchPreferenceProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch4,
                builder: (context, isSelectedSwitch4, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch4,
                    onChange: (value) {
                      context
                          .read<MatchPreferenceProvider>()
                          .changeSwitchBox4(value);
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 29.v,
        width: 325.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 3.v,
                width: 325.h,
                margin: EdgeInsets.only(bottom: 11.v),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 325.h,
                        child: Divider(
                          color: appTheme.blueGray100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 218.h,
                        child: Divider(
                          color: appTheme.red20001,
                          indent: 56.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 82.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSwitchSwitchBtn3d,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSwitchSwitchBtn3d,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return Container(
      height: 49.v,
      width: 341.h,
      margin: EdgeInsets.only(left: 14.h),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 3.v,
              width: 325.h,
              margin: EdgeInsets.only(top: 15.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 325.h,
                      child: Divider(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 252.h,
                      child: Divider(
                        color: appTheme.red20001,
                        endIndent: 17.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 253.h),
                  decoration: AppDecoration.outlineBlack900,
                  child: Container(
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.red100,
                      borderRadius: BorderRadius.circular(
                        14.h,
                      ),
                      border: Border.all(
                        color: appTheme.red20001,
                        width: 3.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    children: [
                      Text(
                        "lbl_5k".tr,
                        style: CustomTextStyles.bodySmallOpenSansHebrewRed20001,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 226.h),
                        child: Text(
                          "lbl_200k".tr,
                          style:
                              CustomTextStyles.bodySmallOpenSansHebrewRed20001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSwitchSwitchBtn3d,
            height: 28.adaptSize,
            width: 28.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 7.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 49.v,
        width: 325.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 3.v,
                width: 325.h,
                margin: EdgeInsets.only(top: 15.v),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 325.h,
                        child: Divider(
                          color: appTheme.blueGray100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 231.h,
                        child: Divider(
                          color: appTheme.red20001,
                          indent: 73.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 60.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 143.h),
                      decoration: AppDecoration.outlineBlack900,
                      child: Container(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.red100,
                          borderRadius: BorderRadius.circular(
                            14.h,
                          ),
                          border: Border.all(
                            color: appTheme.red20001,
                            width: 3.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Row(
                        children: [
                          Text(
                            "lbl_150".tr,
                            style: CustomTextStyles
                                .bodySmallOpenSansHebrewRed20001,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 109.h),
                            child: Text(
                              "lbl_500".tr,
                              style: CustomTextStyles
                                  .bodySmallOpenSansHebrewRed20001,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSwitchSwitchBtn3d,
              height: 28.adaptSize,
              width: 28.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 92.h),
            ),
          ],
        ),
      ),
    );
  }
}
