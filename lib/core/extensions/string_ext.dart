import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_colors.dart';

extension TextWidget on String {
  String get image => 'assets/images/$this';
  String get icon => 'assets/icons/$this';

  Text poppins(
          {Color? color,
          double? height,
          double? fontSize,
          FontWeight? fontWeight,
          TextAlign? textAlign,
          TextDecoration? decoration,
          double? letterSpacing,
          List<FontFeature>? fontFeatures}) =>
      Text(
        this,
        textAlign: textAlign ?? TextAlign.left,
        style: GoogleFonts.poppins(
          color: color ?? textPrimary,
          height: height ?? 1,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w400,
          decoration: decoration ?? TextDecoration.none,
          decorationThickness: 2,
          letterSpacing: letterSpacing ?? 0,
          fontFeatures: fontFeatures,
        ),
      );

  Text stixTwoText(
          {Color? color,
          double? height,
          double? fontSize,
          FontWeight? fontWeight,
          TextAlign? textAlign,
          TextDecoration? decoration,
          double? letterSpacing}) =>
      Text(
        this,
        textAlign: textAlign ?? TextAlign.left,
        style: GoogleFonts.stixTwoText(
          color: color ?? textPrimary,
          height: height ?? 1,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w400,
          decoration: decoration ?? TextDecoration.none,
          decorationThickness: 2,
          letterSpacing: letterSpacing ?? 0,
        ),
      );

  Text msMadi(
          {Color? color,
          double? height,
          double? fontSize,
          FontWeight? fontWeight,
          TextAlign? textAlign,
          TextDecoration? decoration,
          double? letterSpacing}) =>
      Text(
        this,
        textAlign: textAlign ?? TextAlign.left,
        style: GoogleFonts.msMadi(
          color: color ?? textPrimary,
          height: height ?? 1,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w400,
          decoration: decoration ?? TextDecoration.none,
          decorationThickness: 2,
          letterSpacing: letterSpacing ?? 0,
        ),
      );
}
