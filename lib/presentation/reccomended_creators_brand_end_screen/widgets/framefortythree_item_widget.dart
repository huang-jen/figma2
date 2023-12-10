import '../models/framefortythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class FramefortythreeItemWidget extends StatelessWidget {
  FramefortythreeItemWidget(
    this.framefortythreeItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramefortythreeItemModel framefortythreeItemModelObj;

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
        framefortythreeItemModelObj.tiktok!,
        style: TextStyle(
          color: (framefortythreeItemModelObj.isSelected ?? false)
              ? appTheme.deepPurple600
              : theme.colorScheme.primaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefortythreeItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.red10001,
      selectedColor: appTheme.deepPurple50,
      shape: (framefortythreeItemModelObj.isSelected ?? false)
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
