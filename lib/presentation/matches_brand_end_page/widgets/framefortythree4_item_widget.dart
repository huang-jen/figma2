import '../models/framefortythree4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class Framefortythree4ItemWidget extends StatelessWidget {
  Framefortythree4ItemWidget(
    this.framefortythree4ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Framefortythree4ItemModel framefortythree4ItemModelObj;

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
        framefortythree4ItemModelObj.tiktok!,
        style: TextStyle(
          color: (framefortythree4ItemModelObj.isSelected ?? false)
              ? appTheme.deepPurple600
              : appTheme.lightGreen900,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefortythree4ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.lightGreen10002,
      selectedColor: appTheme.deepPurple50,
      shape: (framefortythree4ItemModelObj.isSelected ?? false)
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
