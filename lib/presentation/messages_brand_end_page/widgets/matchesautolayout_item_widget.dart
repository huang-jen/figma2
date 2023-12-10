import '../models/matchesautolayout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class MatchesautolayoutItemWidget extends StatelessWidget {
  MatchesautolayoutItemWidget(
    this.matchesautolayoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MatchesautolayoutItemModel matchesautolayoutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGrayF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  matchesautolayoutItemModelObj.aaronLoeb!,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  matchesautolayoutItemModelObj.helloHowAreYou!,
                  style: CustomTextStyles.bodySmallOpenSansGray500,
                ),
              ],
            ),
          ),
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
                    decoration: AppDecoration.outlineLightGreen.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder33,
                    ),
                    child: CustomImageView(
                      imagePath: matchesautolayoutItemModelObj?.aaronLoeb1,
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
    );
  }
}
