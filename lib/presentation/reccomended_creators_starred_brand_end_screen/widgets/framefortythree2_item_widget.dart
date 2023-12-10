import '../models/framefortythree2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class Framefortythree2ItemWidget extends StatelessWidget {
  Framefortythree2ItemWidget(
    this.framefortythree2ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Framefortythree2ItemModel framefortythree2ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 1.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framefortythree2ItemModelObj.tiktok!,
        style: TextStyle(
          color: (framefortythree2ItemModelObj.isSelected ?? false)
              ? appTheme.deepPurple600
              : appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefortythree2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.orange50,
      selectedColor: appTheme.deepPurple50,
      shape: (framefortythree2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
