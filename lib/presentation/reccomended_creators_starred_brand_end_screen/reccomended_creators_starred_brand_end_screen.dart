import '../reccomended_creators_starred_brand_end_screen/widgets/framefortythree2_item_widget.dart';
import '../reccomended_creators_starred_brand_end_screen/widgets/reccomendedcreatorsstarredbran_item_widget.dart';
import 'models/framefortythree2_item_model.dart';
import 'models/reccomended_creators_starred_brand_end_model.dart';
import 'models/reccomendedcreatorsstarredbran_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';
import 'package:hyptester2/widgets/app_bar/appbar_leading_image.dart';
import 'package:hyptester2/widgets/app_bar/appbar_subtitle.dart';
import 'package:hyptester2/widgets/app_bar/custom_app_bar.dart';
import 'package:hyptester2/widgets/custom_outlined_button.dart';
import 'provider/reccomended_creators_starred_brand_end_provider.dart';

class ReccomendedCreatorsStarredBrandEndScreen extends StatefulWidget {
  const ReccomendedCreatorsStarredBrandEndScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ReccomendedCreatorsStarredBrandEndScreenState createState() =>
      ReccomendedCreatorsStarredBrandEndScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReccomendedCreatorsStarredBrandEndProvider(),
      child: ReccomendedCreatorsStarredBrandEndScreen(),
    );
  }
}

class ReccomendedCreatorsStarredBrandEndScreenState
    extends State<ReccomendedCreatorsStarredBrandEndScreen> {
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
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: Column(
                      children: [
                        _buildFiftyTwo(context),
                        SizedBox(height: 14.v),
                        _buildSaved(context),
                        SizedBox(height: 14.v),
                        _buildFiftyThree(context),
                      ],
                    ),
                  ),
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
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.outlineBlack,
      child: CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgVectorPrimary,
          margin: EdgeInsets.only(
            left: 29.h,
            bottom: 10.v,
          ),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "msg_top_10_creators".tr,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return SizedBox(
      height: 421.v,
      width: 338.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 86.v,
              width: 128.h,
              margin: EdgeInsets.only(bottom: 43.v),
              decoration: AppDecoration.fillBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 20.v,
                width: 128.h,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 96.v),
              child: Text(
                "lbl_saved".tr,
                style: CustomTextStyles.titleSmallBluegray400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(15.h),
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar2,
                          height: 27.adaptSize,
                          width: 27.adaptSize,
                          margin: EdgeInsets.only(
                            top: 19.v,
                            bottom: 20.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 11.v,
                            bottom: 8.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_elsie_yang".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 8.v),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_tiktok_creator".tr,
                                      style: CustomTextStyles
                                          .labelLargeOpenSansBluegray400,
                                    ),
                                    TextSpan(
                                      text: "lbl_30k_followers".tr,
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray400,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 66.v,
                          width: 65.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 51.v,
                                  width: 50.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.errorContainer,
                                    borderRadius: BorderRadius.circular(
                                      25.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 66.v,
                                  width: 65.h,
                                  padding: EdgeInsets.all(4.h),
                                  decoration: AppDecoration.outline.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder33,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgImage12,
                                    height: 52.v,
                                    width: 51.h,
                                    radius: BorderRadius.circular(
                                      25.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Container(
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 6.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "msg_compatibility_score".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_81".tr,
                            style: CustomTextStyles.labelLargeBluegray400Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.h,
                      right: 51.h,
                    ),
                    child: Row(
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
                            "lbl_7k_followers".tr,
                            style: theme.textTheme.bodySmall,
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
                            "lbl_14k_followers".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "msg_brands_i_work_with".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Opacity(
                    opacity: 0.7,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame124,
                      height: 24.v,
                      width: 86.h,
                      margin: EdgeInsets.only(left: 7.h),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Consumer<ReccomendedCreatorsStarredBrandEndProvider>(
                      builder: (context, provider, child) {
                        return Wrap(
                          runSpacing: 5.v,
                          spacing: 5.h,
                          children: List<Widget>.generate(
                            provider.reccomendedCreatorsStarredBrandEndModelObj
                                .framefortythree2ItemList.length,
                            (index) {
                              Framefortythree2ItemModel model = provider
                                  .reccomendedCreatorsStarredBrandEndModelObj
                                  .framefortythree2ItemList[index];

                              return Framefortythree2ItemWidget(
                                model,
                                onSelectedChipView: (value) {
                                  provider.onSelectedChipView(index, value);
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomOutlinedButton(
                    text: "lbl_open_in_matches".tr,
                    margin: EdgeInsets.symmetric(horizontal: 7.h),
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaved(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 42.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_saved".tr,
            style: CustomTextStyles.labelLargeBluegray400,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_based_on_this_preference".tr,
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return SizedBox(
      height: 316.v,
      width: 338.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector2,
            height: 45.v,
            width: 186.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 75.v,
              right: 56.h,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Consumer<ReccomendedCreatorsStarredBrandEndProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 14.v,
                    );
                  },
                  itemCount: provider.reccomendedCreatorsStarredBrandEndModelObj
                      .reccomendedcreatorsstarredbranItemList.length,
                  itemBuilder: (context, index) {
                    ReccomendedcreatorsstarredbranItemModel model = provider
                        .reccomendedCreatorsStarredBrandEndModelObj
                        .reccomendedcreatorsstarredbranItemList[index];
                    return ReccomendedcreatorsstarredbranItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
