import 'package:flutter/material.dart';

import 'package:tut_app/presentation/resources/colors_manager.dart';
import 'package:tut_app/presentation/resources/styles_manager.dart';
import 'package:tut_app/presentation/resources/font_manager.dart';
import 'package:tut_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main color
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.lightPrimary,
    primaryColorDark: AppColor.darkPrimary,

    // disabledColor :The fill color of the button when the button is disabled "before click it"
    disabledColor: AppColor.grey,
    // splashColor => ripple effect : Color display when you click on the button
    splashColor: AppColor.lightPrimary,

    // CardView Theme
    cardTheme: const CardTheme(
      color: AppColor.white,
      shadowColor: AppColor.grey,
      // This property controls the size of the shadow below the app bar if shadowColor is not null.
      elevation: AppSize.s4,
    ),

    // AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColor.primary,
      elevation: AppSize.s4,
      titleTextStyle:
          getSemiBoldStyle(fontSize: FontSize.s16, color: AppColor.white),
    ),

    // Button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: AppColor.primary,
      disabledColor: AppColor.grey1,
      splashColor: AppColor.lightPrimary,
      textTheme: ButtonTextTheme.primary,
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle:
              getRegularStyle(color: AppColor.white, fontSize: FontSize.s17),
          backgroundColor: AppColor.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12))),
    ),

    // Text Theme
    // The names of the 2018 TextTheme properties match this table from the Material Design spec with two exceptions: the styles called H1-H6 in the spec are headline1-headline6 in the API, and body1,body2 are called bodyText1 and bodyText2.
    // Don't use it
    // The 2018 spec has thirteen text styles:
    //
    // NAME         SIZE  WEIGHT  SPACING
    // headline1    96.0  light   -1.5
    // headline2    60.0  light   -0.5
    // headline3    48.0  regular  0.0
    // headline4    34.0  regular  0.25
    // headline5    24.0  regular  0.0
    // headline6    20.0  medium   0.15
    // subtitle1    16.0  regular  0.15
    // subtitle2    14.0  medium   0.1
    //     body1        16.0  regular  0.5   (bodyText1)
    // body2        14.0  regular  0.25  (bodyText2)
    // button       14.0  medium   1.25
    // caption      12.0  regular  0.4
    // overline     10.0  regular  1.5

    textTheme: TextTheme(
      titleMedium:
          getMediumStyle(color: AppColor.lightGrey, fontSize: FontSize.s16),
      displayLarge:
          getSemiBoldStyle(color: AppColor.darkGrey, fontSize: FontSize.s16),
      displayMedium:
          getMediumStyle(color: AppColor.darkGrey, fontSize: FontSize.s16),
      headlineLarge:
          getBoldStyle(color: AppColor.primary, fontSize: FontSize.s18),
      headlineMedium:
          getRegularStyle(color: AppColor.darkGrey, fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: AppColor.grey1),
      bodySmall: getRegularStyle(color: AppColor.grey),
    ),

    // Input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // Content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),

      // Hint style
      hintStyle:
          getRegularStyle(color: AppColor.darkGrey, fontSize: FontSize.s14),
      labelStyle: getMediumStyle(color: AppColor.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: AppColor.error),

      // Enabled border style "when the input is enable"
      enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColor.primary, width: AppBorder.b1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),

      // Focused border style
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.grey, width: AppBorder.b1_5),
      ),

      // Error border style
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.error, width: AppBorder.b1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),

      // Focused border style
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primary, width: AppBorder.b8),
          borderRadius: BorderRadius.all(Radius.circular(AppBorder.b8))),
    ),
  );
}
