import '../matches_brand_end_page/widgets/framefortythree4_item_widget.dart';
import 'models/framefortythree4_item_model.dart';
import 'models/matches_brand_end_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/custom_icon_button.dart';
import 'package:hyptester2/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'provider/matches_brand_end_provider.dart';

// ignore_for_file: must_be_immutable
class MatchesBrandEndPage extends StatefulWidget {
  const MatchesBrandEndPage({Key? key})
      : super(
          key: key,
        );

  @override
  MatchesBrandEndPageState createState() => MatchesBrandEndPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MatchesBrandEndProvider(),
      child: MatchesBrandEndPage(),
    );
  }
}

class MatchesBrandEndPageState extends State<MatchesBrandEndPage>
    with AutomaticKeepAliveClientMixin<MatchesBrandEndPage> {
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
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
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
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              height: 172.v,
                                              width: 169.h,
                                              margin:
                                                  EdgeInsets.only(right: 50.h),
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
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 85.h),
                                              child: Text(
                                                "lbl_grace_finer".tr,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 59.h),
                                              child: Text(
                                                "msg_beauty_influencer2".tr,
                                                style: CustomTextStyles
                                                    .titleMediumGray50001Medium,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 19.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 29.v,
                                              width: 232.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage38,
                                                          height: 29.adaptSize,
                                                          width: 29.adaptSize,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 5.h,
                                                            top: 7.v,
                                                            bottom: 6.v,
                                                          ),
                                                          child: Text(
                                                            "lbl_7k_followers"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgTiktokLogo1f4,
                                                          height: 29.v,
                                                          width: 28.h,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 5.h,
                                                            top: 7.v,
                                                            bottom: 6.v,
                                                          ),
                                                          child: Text(
                                                            "lbl_41k_followers"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  _buildFrame(
                                                    context,
                                                    kFollowers:
                                                        "lbl_7k_followers".tr,
                                                    kFollowers1:
                                                        "lbl_41k_followers".tr,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 13.v),
                                          Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                              "msg_brands_i_work_with".tr,
                                              style: theme.textTheme.titleSmall,
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
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 8.v),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                decoration: AppDecoration
                                                    .fillPink
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                      "lbl_tiktok".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPoppinsPink90001,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                decoration: AppDecoration
                                                    .fillLightGreen
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                      "lbl_skincare".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPoppinsLightgreen900,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                decoration: AppDecoration
                                                    .fillOrange
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                      "lbl_advertising".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPoppinsBluegray800,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                decoration: AppDecoration
                                                    .fillRed
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder10,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Text(
                                                      "lbl_demo".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallPoppinsPrimaryContainer,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 9.v),
                                          Container(
                                            margin:
                                                EdgeInsets.only(right: 210.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.h),
                                            decoration: AppDecoration
                                                .fillDeepPurple
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 1.v),
                                                Text(
                                                  "lbl_tutorial".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallPoppinsDeeppurple600,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 14.v),
                                          Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                              "lbl_bio".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          Container(
                                            width: 283.h,
                                            margin: EdgeInsets.only(left: 1.h),
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
                                          SizedBox(height: 19.v),
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
                                                      height: 135.v,
                                                      width: 132.h,
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
                                                            imagePath: ImageConstant
                                                                .imgImage12135x132,
                                                            height: 135.v,
                                                            width: 132.h,
                                                            radius: BorderRadius
                                                                .circular(
                                                              66.h,
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
                                          SizedBox(height: 31.v),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_elsie_yang2".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_tiktoker".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray50001Medium,
                                            ),
                                          ),
                                          SizedBox(height: 24.v),
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
                                              style: theme.textTheme.titleSmall,
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
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 8.v),
                                          _buildFrameFortyThree(context),
                                          SizedBox(height: 14.v),
                                          Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                              "lbl_bio".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          Container(
                                            width: 283.h,
                                            margin: EdgeInsets.only(
                                              left: 1.h,
                                              right: 17.h,
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
  Widget _buildFrameFortyThree(BuildContext context) {
    return Consumer<MatchesBrandEndProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 5.v,
          spacing: 5.h,
          children: List<Widget>.generate(
            provider.matchesBrandEndModelObj.framefortythree4ItemList.length,
            (index) {
              Framefortythree4ItemModel model = provider
                  .matchesBrandEndModelObj.framefortythree4ItemList[index];

              return Framefortythree4ItemWidget(
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
        mainAxisSize: MainAxisSize.min,
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
              child: CustomOutlinedButton(
                height: 63.v,
                width: 192.h,
                text: "lbl_message_me".tr,
                buttonStyle: CustomButtonStyles.outline,
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String kFollowers,
    required String kFollowers1,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage38,
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
            kFollowers,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgTiktokLogo1f4,
          height: 29.v,
          width: 28.h,
          margin: EdgeInsets.only(left: 17.h),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 7.v,
            bottom: 6.v,
          ),
          child: Text(
            kFollowers1,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
      ],
    );
  }
}
