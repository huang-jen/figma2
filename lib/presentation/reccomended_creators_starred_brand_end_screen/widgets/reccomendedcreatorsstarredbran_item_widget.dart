import '../models/reccomendedcreatorsstarredbran_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class ReccomendedcreatorsstarredbranItemWidget extends StatelessWidget {
  ReccomendedcreatorsstarredbranItemWidget(
    this.reccomendedcreatorsstarredbranItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReccomendedcreatorsstarredbranItemModel
      reccomendedcreatorsstarredbranItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGrayF,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: reccomendedcreatorsstarredbranItemModelObj?.jaredFord,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(
                top: 19.v,
                bottom: 20.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 10.v,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reccomendedcreatorsstarredbranItemModelObj.jaredFord1!,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 8.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_actor_65k".tr,
                          style: CustomTextStyles.labelLargeOpenSansBluegray400,
                        ),
                        TextSpan(
                          text: "lbl_followers2".tr,
                          style: CustomTextStyles.bodySmallOpenSansBluegray400,
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
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder33,
                      ),
                      child: CustomImageView(
                        imagePath: reccomendedcreatorsstarredbranItemModelObj
                            ?.jaredFord2,
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
    );
  }
}
