import 'models/settings_brand_end_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/custom_search_view.dart';
import 'package:hyptester2/widgets/custom_switch.dart';
import 'provider/settings_brand_end_provider.dart';

class SettingsBrandEndPage extends StatefulWidget {
  const SettingsBrandEndPage({Key? key}) : super(key: key);

  @override
  SettingsBrandEndPageState createState() => SettingsBrandEndPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsBrandEndProvider(),
        child: SettingsBrandEndPage());
  }
}

class SettingsBrandEndPageState extends State<SettingsBrandEndPage>
    with AutomaticKeepAliveClientMixin<SettingsBrandEndPage> {
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
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 36.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31.h),
                      child: Column(children: [
                        Selector<SettingsBrandEndProvider,
                                TextEditingController?>(
                            selector: (context, provider) =>
                                provider.searchController,
                            builder: (context, searchController, child) {
                              return CustomSearchView(
                                  controller: searchController,
                                  hintText: "msg_search_for_setting".tr);
                            }),
                        SizedBox(height: 45.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h, right: 15.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, bottom: 3.v),
                                      child: Text("lbl_brand_mode".tr,
                                          style: CustomTextStyles
                                              .titleSmallRed200)),
                                  Selector<SettingsBrandEndProvider, bool?>(
                                      selector: (context, provider) =>
                                          provider.isSelectedSwitch,
                                      builder:
                                          (context, isSelectedSwitch, child) {
                                        return CustomSwitch(
                                            value: isSelectedSwitch,
                                            onChange: (value) {
                                              context
                                                  .read<
                                                      SettingsBrandEndProvider>()
                                                  .changeSwitchBox(value);
                                            });
                                      })
                                ])),
                        SizedBox(height: 28.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 21.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMdiAccount,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(top: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 23.h, bottom: 6.v),
                                          child: Text("lbl_brand_account".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray800))
                                    ]))),
                        SizedBox(height: 18.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 20.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgIcBaselineNot,
                                      height: 23.v,
                                      width: 16.h),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 27.h, top: 2.v),
                                      child: Text("lbl_notifications".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray800))
                                ]))),
                        SizedBox(height: 23.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 17.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapVector(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 15.v,
                                              width: 18.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 5.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 25.h),
                                              child: Text(
                                                  "msg_match_preferences".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallGray800))
                                        ])))),
                        SizedBox(height: 23.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 15.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTopRecommended(context);
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, right: 20.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgIcRoundStar,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(bottom: 1.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h, top: 4.v),
                                          child: Text("msg_top_recommended".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray800))
                                    ])))),
                        SizedBox(height: 21.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 17.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUilLock,
                                      height: 24.v,
                                      width: 16.h,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 27.h, top: 5.v),
                                      child: Text("msg_privacy_security".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray800))
                                ]))),
                        SizedBox(height: 18.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 16.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFluentBookQue,
                                      height: 24.v,
                                      width: 16.h),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 27.h, top: 2.v),
                                      child: Text("lbl_about".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray800))
                                ]))),
                        SizedBox(height: 21.v),
                        Divider(indent: 6.h, endIndent: 6.h),
                        SizedBox(height: 20.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup,
                                      height: 19.v,
                                      width: 20.h,
                                      margin: EdgeInsets.only(bottom: 4.v)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 23.h, top: 2.v),
                                      child: Text("msg_help_and_support".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray800))
                                ]))),
                        SizedBox(height: 21.v),
                        Divider(indent: 6.h, endIndent: 6.h)
                      ]))
                ]))));
  }

  @override
  void onReady() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.reccomendedCreatorsBrandEndScreen,
      );
    });
  }

  /// Navigates to the matchPreferenceScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.matchPreferenceScreen,
    );
  }

  /// Navigates to the reccomendedCreatorsBrandEndScreen when the action is triggered.
  onTapTopRecommended(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reccomendedCreatorsBrandEndScreen,
    );
  }
}
