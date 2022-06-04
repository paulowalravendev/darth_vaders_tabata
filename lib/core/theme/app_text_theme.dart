import 'package:darth_vaders_tabata/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextTheme {
  static final TextStyle _textStyle =
      GoogleFonts.lato().copyWith(color: AppColors.defaultTextColors);

  static Widget Normal(String value) =>
      Text(value, style: _textStyle, textAlign: TextAlign.center);

  static Widget Header(String value) => Text(value,
      style: _textStyle.copyWith(fontWeight: FontWeight.w900, fontSize: 20),
      textAlign: TextAlign.center);

  static Widget Button(String value) => Text(value,
      style: _textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
      textAlign: TextAlign.center);

  static Widget Subtitle(String value) => Text(value,
      style: _textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 14),
      textAlign: TextAlign.center);

  static Widget HeaderInfoLabel(String value) => Text(value,
      style: _textStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 12),
      textAlign: TextAlign.center);

  static Widget HeaderInfoValue(String value) => Text(value,
      style: _textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 20),
      textAlign: TextAlign.center);
}
