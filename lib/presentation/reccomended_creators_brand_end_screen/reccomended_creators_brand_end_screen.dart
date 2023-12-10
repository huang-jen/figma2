import '../reccomended_creators_brand_end_screen/widgets/frame_item_widget.dart';
import '../reccomended_creators_brand_end_screen/widgets/framefortythree_item_widget.dart';
import 'models/frame_item_model.dart';
import 'models/framefortythree_item_model.dart';
import 'models/reccomended_creators_brand_end_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/app_bar/appbar_leading_image.dart';
import 'package:hyptester2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hyptester2/widgets/app_bar/custom_app_bar.dart';
import 'package:hyptester2/widgets/custom_elevated_button.dart';
import 'provider/reccomended_creators_brand_end_provider.dart';

class ReccomendedCreatorsBrandEndScreen extends StatefulWidget {
  const ReccomendedCreatorsBrandEndScreen({Key? key}) : super(key: key);

  @override
  ReccomendedCreatorsBrandEndScreenState createState() =>
      ReccomendedCreatorsBrandEndScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReccomendedCreatorsBrandEndProvider(),
        child: ReccomendedCreatorsBrandEndScreen());
  }
}

class ReccomendedCreatorsBrandEndScreenState
    extends State<ReccomendedCreatorsBrandEndScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.reccomendedCreatorsStarredBrandEndScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildVideosAndMedia(context),
                  SizedBox(height: 6.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 26.h),
                              child: Column(children: [
                                _buildReccomendedCreator(context),
                                SizedBox(height: 10.v),
                                _buildReccomendedCreator1(context),
                                SizedBox(height: 10.v),
                                _buildReccomendedCreator2(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildVideosAndMedia(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 22.v),
        decoration: AppDecoration.outlineBlack,
        child: CustomAppBar(
            leadingWidth: 57.h,
            leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgVectorPrimary,
                margin: EdgeInsets.only(left: 29.h, bottom: 10.v)),
            centerTitle: true,
            title: AppbarSubtitle(text: "msg_top_10_creators".tr)));
  }

  /// Section Widget
  Widget _buildReccomendedCreator(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGrayF,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgStar3,
                        height: 27.adaptSize,
                        width: 27.adaptSize,
                        margin: EdgeInsets.only(top: 19.v, bottom: 20.v),
                        onTap: () {
                          onTapImgImage(context);
                        }),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 16.h, top: 11.v, bottom: 8.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_elsie_yang".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 8.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_tiktok_creator".tr,
                                        style: CustomTextStyles
                                            .labelLargeOpenSansBluegray400),
                                    TextSpan(
                                        text: "lbl_30k_followers".tr,
                                        style: CustomTextStyles
                                            .bodySmallOpenSansBluegray400)
                                  ]),
                                  textAlign: TextAlign.left)
                            ])),
                    Spacer(),
                    SizedBox(
                        height: 66.v,
                        width: 65.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 51.v,
                                  width: 50.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.errorContainer,
                                      borderRadius:
                                          BorderRadius.circular(25.h)))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 66.v,
                                  width: 65.h,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: AppDecoration.outline.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder33),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgImage12,
                                      height: 52.v,
                                      width: 51.h,
                                      radius: BorderRadius.circular(25.h),
                                      alignment: Alignment.center)))
                        ]))
                  ])),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 6.h),
                  child: _buildComponentFortyNine(context)),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 25.h, right: 51.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage38,
                        height: 29.adaptSize,
                        width: 29.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 5.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_7k_followers".tr,
                            style: theme.textTheme.bodySmall)),
                    CustomImageView(
                        imagePath: ImageConstant.imgTiktokLogo1f4,
                        height: 29.v,
                        width: 28.h,
                        margin: EdgeInsets.only(left: 17.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 5.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_14k_followers".tr,
                            style: theme.textTheme.bodySmall))
                  ])),
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text("msg_brands_i_work_with".tr,
                      style: theme.textTheme.labelLarge)),
              SizedBox(height: 9.v),
              Opacity(
                  opacity: 0.7,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame124,
                      height: 24.v,
                      width: 86.h,
                      margin: EdgeInsets.only(left: 7.h))),
              SizedBox(height: 28.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Consumer<ReccomendedCreatorsBrandEndProvider>(
                      builder: (context, provider, child) {
                    return Wrap(
                        runSpacing: 5.v,
                        spacing: 5.h,
                        children: List<Widget>.generate(
                            provider.reccomendedCreatorsBrandEndModelObj
                                .framefortythreeItemList.length, (index) {
                          FramefortythreeItemModel model = provider
                              .reccomendedCreatorsBrandEndModelObj
                              .framefortythreeItemList[index];
                          return FramefortythreeItemWidget(model,
                              onSelectedChipView: (value) {
                            provider.onSelectedChipView(index, value);
                          });
                        }));
                  })),
              SizedBox(height: 14.v)
            ]));
  }

  /// Section Widget
  Widget _buildReccomendedCreator1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGrayF,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgStar327x27,
                            height: 27.adaptSize,
                            width: 27.adaptSize,
                            margin: EdgeInsets.only(top: 19.v, bottom: 20.v),
                            onTap: () {
                              onTapImgImage1(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_grace_finer".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 11.v),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_beauty_influencer2".tr,
                                            style: CustomTextStyles
                                                .labelLargeOpenSansBluegray400),
                                        TextSpan(
                                            text: "lbl_19k_followers".tr,
                                            style: CustomTextStyles
                                                .bodySmallOpenSansBluegray400)
                                      ]),
                                      textAlign: TextAlign.left)
                                ])),
                        SizedBox(
                            height: 66.v,
                            width: 65.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 51.v,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                          color:
                                              theme.colorScheme.errorContainer,
                                          borderRadius:
                                              BorderRadius.circular(25.h)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 3.h),
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder33),
                                      child: Container(
                                          height: 66.v,
                                          width: 65.h,
                                          padding: EdgeInsets.all(4.h),
                                          decoration: AppDecoration.outline
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder33),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage12,
                                                    height: 52.v,
                                                    width: 51.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            25.h),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 52.v,
                                                        width: 51.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage20,
                                                                  height: 52.v,
                                                                  width: 51.h,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          25.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage11,
                                                                  height: 52.v,
                                                                  width: 51.h,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          25.h),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])))
                                              ]))))
                            ]))
                      ])),
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 6.h),
                  child: _buildComponentFortyNine(context)),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 25.h, right: 32.h),
                  child: _buildFrame(context,
                      kFollowers: "lbl_13_2k_followers".tr,
                      kFollowers1: "lbl_30k_followers2".tr)),
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text("msg_brands_i_work_with".tr,
                      style: theme.textTheme.labelLarge)),
              SizedBox(height: 9.v),
              Opacity(
                  opacity: 0.7,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrame124,
                      height: 24.v,
                      width: 86.h,
                      margin: EdgeInsets.only(left: 7.h))),
              SizedBox(height: 31.v),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Consumer<ReccomendedCreatorsBrandEndProvider>(
                      builder: (context, provider, child) {
                    return Wrap(
                        runSpacing: 5.v,
                        spacing: 5.h,
                        children: List<Widget>.generate(
                            provider.reccomendedCreatorsBrandEndModelObj
                                .frameItemList.length, (index) {
                          FrameItemModel model = provider
                              .reccomendedCreatorsBrandEndModelObj
                              .frameItemList[index];
                          return FrameItemWidget(model,
                              onSelectedChipView: (value) {
                            provider.onSelectedChipView(index, value);
                          });
                        }));
                  })),
              SizedBox(height: 11.v)
            ]));
  }

  /// Section Widget
  Widget _buildReccomendedCreator2(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGrayF,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgStar31,
                height: 27.adaptSize,
                width: 27.adaptSize,
                margin: EdgeInsets.only(top: 19.v, bottom: 20.v),
                onTap: () {
                  onTapImgImage2(context);
                }),
            Container(
                height: 66.v,
                width: 263.h,
                margin: EdgeInsets.only(left: 16.h),
                child: Stack(alignment: Alignment.centerRight, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 208.h,
                                child: Text("lbl_erin_micheal".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 5.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_videographer".tr,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansBluegray400),
                                  TextSpan(
                                      text: "lbl_2k_followers".tr,
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400)
                                ]),
                                textAlign: TextAlign.left)
                          ])),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 66.v,
                          width: 65.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 51.v,
                                    width: 50.h,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.errorContainer,
                                        borderRadius:
                                            BorderRadius.circular(25.h)))),
                            Align(
                                alignment: Alignment.center,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 3.h),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder33),
                                    child: Container(
                                        height: 66.v,
                                        width: 65.h,
                                        padding: EdgeInsets.all(4.h),
                                        decoration: AppDecoration.outline
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder33),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage12,
                                                  height: 52.v,
                                                  width: 51.h,
                                                  radius: BorderRadius.circular(
                                                      25.h),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage20,
                                                  height: 52.v,
                                                  width: 51.h,
                                                  radius: BorderRadius.circular(
                                                      25.h),
                                                  alignment: Alignment.center)
                                            ]))))
                          ])))
                ]))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildComponentFortyNine(context)),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.only(left: 25.h, right: 32.h),
              child: _buildFrame(context,
                  kFollowers: "lbl_13_2k_followers".tr,
                  kFollowers1: "lbl_30k_followers2".tr)),
          SizedBox(height: 22.v),
          Text("msg_brands_i_work_with".tr, style: theme.textTheme.labelLarge),
          SizedBox(height: 9.v),
          Opacity(
              opacity: 0.7,
              child: CustomImageView(
                  imagePath: ImageConstant.imgFrame124,
                  height: 24.v,
                  width: 86.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 7.h))),
          SizedBox(height: 28.v),
          Padding(
              padding: EdgeInsets.only(left: 6.h, right: 14.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomElevatedButton(width: 54.h, text: "lbl_tiktok".tr),
                Container(
                    width: 88.h,
                    margin: EdgeInsets.only(left: 5.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
                    decoration: AppDecoration.fillOrange.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10),
                    child: Text("lbl_advertising".tr,
                        style: CustomTextStyles.bodySmallPoppinsBluegray800)),
                Container(
                    width: 75.h,
                    margin: EdgeInsets.only(left: 5.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 1.v),
                    decoration: AppDecoration.fillDeepPurple.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10),
                    child: Text("lbl_tutorial".tr,
                        style: CustomTextStyles.bodySmallPoppinsDeeppurple600)),
                Container(
                    width: 56.h,
                    margin: EdgeInsets.only(left: 5.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
                    decoration: AppDecoration.fillRed.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10),
                    child: Text("lbl_demo".tr,
                        style:
                            CustomTextStyles.bodySmallPoppinsPrimaryContainer))
              ])),
          SizedBox(height: 14.v)
        ]));
  }

  /// Common widget
  Widget _buildComponentFortyNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 3.v),
              child: Text("msg_compatibility_score".tr,
                  style: theme.textTheme.labelLarge)),
          Padding(
              padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
              child: Text("lbl_79".tr,
                  style: CustomTextStyles.labelLargeBluegray400Bold))
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String kFollowers,
    required String kFollowers1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgImage38,
          height: 29.adaptSize,
          width: 29.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 5.h, top: 7.v, bottom: 7.v),
          child: Text(kFollowers,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray800))),
      CustomImageView(
          imagePath: ImageConstant.imgTiktokLogo1f4,
          height: 29.v,
          width: 28.h,
          margin: EdgeInsets.only(left: 17.h)),
      Padding(
          padding: EdgeInsets.only(left: 5.h, top: 7.v, bottom: 7.v),
          child: Text(kFollowers1,
              style:
                  theme.textTheme.bodySmall!.copyWith(color: appTheme.gray800)))
    ]);
  }

  /// Navigates to the reccomendedCreatorsStarredBrandEndScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reccomendedCreatorsStarredBrandEndScreen,
    );
  }

  /// Navigates to the reccomendedCreatorsStarredBrandEndScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reccomendedCreatorsStarredBrandEndScreen,
    );
  }

  /// Navigates to the reccomendedCreatorsStarredBrandEndScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reccomendedCreatorsStarredBrandEndScreen,
    );
  }
}
