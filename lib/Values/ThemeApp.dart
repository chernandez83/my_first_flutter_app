import 'package:flutter/material.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/TextStyleApp.dart';

//class ThemeApp {
//  TextStyleApp? textStyleApp;

//  ThemeApp() {
//    textStyleApp = TextStyleApp();
//  }

  TextTheme get textTheme => TextTheme(
    titleMedium: subtitle1,
    bodyLarge: bodyText1,
    bodyMedium: bodyText2,
    displaySmall: headline3,
    headlineMedium: headline4,
    bodySmall: caption,
  );

  TextTheme get textThemeDark => TextTheme(
    titleMedium: subtitle1Dark,
    bodyLarge: bodyText1Dark,
    bodyMedium: bodyText2Dark,
    displaySmall: headline3Dark,
    headlineMedium: headline4Dark,
    bodySmall: captionDark,
  );

  IconThemeData get iconThemeData1 => IconThemeData(
    color: icon1Color,
  );

  IconThemeData get iconThemeData2 => iconThemeData1.copyWith(
    color: icon2Color,
  );

  IconThemeData get iconThemeDataDark => iconThemeData1.copyWith(
    color: iconDark,
  );

//}