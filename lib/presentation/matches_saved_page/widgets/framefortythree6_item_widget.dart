import '../models/framefortythree6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hyptester2/core/app_export.dart';

// ignore: must_be_immutable
class Framefortythree6ItemWidget extends StatelessWidget {
  Framefortythree6ItemWidget(
    this.framefortythree6ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Framefortythree6ItemModel framefortythree6ItemModelObj;

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
        framefortythree6ItemModelObj.makeup!,
        style: TextStyle(
          color: (framefortythree6ItemModelObj.isSelected ?? false)
              ? appTheme.pink900
              : appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (framefortythree6ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.orange50,
      selectedColor: appTheme.pink50,
      shape: (framefortythree6ItemModelObj.isSelected ?? false)
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
