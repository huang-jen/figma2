import '../models/framefortyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class FramefortyfourItemWidget extends StatelessWidget {
  FramefortyfourItemWidget(
    this.framefortyfourItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramefortyfourItemModel framefortyfourItemModelObj;

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
        framefortyfourItemModelObj.skincare!,
        style: TextStyle(
          color: (framefortyfourItemModelObj.isSelected ?? false)
              ? appTheme.pink900
              : appTheme.deepPurple600,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefortyfourItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.deepPurple50,
      selectedColor: appTheme.pink50,
      shape: (framefortyfourItemModelObj.isSelected ?? false)
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
