import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumOpenSansHebrewBluegray10001 =>
      theme.textTheme.bodyMedium!.openSansHebrew.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumOpenSansHebrewGray50001 =>
      theme.textTheme.bodyMedium!.openSansHebrew.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumOpenSansHebrewGray800 =>
      theme.textTheme.bodyMedium!.openSansHebrew.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsRed20001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.red20001,
      );
  static get bodySmallOpenSansBluegray400 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallOpenSansGray500 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallOpenSansHebrewBluegray400 =>
      theme.textTheme.bodySmall!.openSansHebrew.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallOpenSansHebrewRed20001 =>
      theme.textTheme.bodySmall!.openSansHebrew.copyWith(
        color: appTheme.red20001,
      );
  static get bodySmallOpenSansRed200 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.red200,
      );
  static get bodySmallPoppinsBluegray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallPoppinsBluegray800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallPoppinsDeeppurple600 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.deepPurple600,
      );
  static get bodySmallPoppinsLightgreen900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.lightGreen900,
      );
  static get bodySmallPoppinsOnPrimary =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPoppinsPink900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.pink900,
      );
  static get bodySmallPoppinsPink90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.pink90001,
      );
  static get bodySmallPoppinsPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray400Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansBluegray400 =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOpenSansBluegray400SemiBold =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray50001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallRed200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red200,
        fontSize: 15.fSize,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get openSansHebrew {
    return copyWith(
      fontFamily: 'Open Sans Hebrew',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
