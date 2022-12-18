import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:topfnf/routes/routes.dart';
import 'package:topfnf/utils/color_utils.dart';
import 'package:topfnf/utils/font_utils.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: RGB.primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: RGB.primaryLightColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TOPFNF',
      theme: ThemeData(
        fontFamily: Fonts.primaryFont,
        appBarTheme: const AppBarTheme(
          backgroundColor: RGB.primaryColor,
          foregroundColor: RGB.whiteColor,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: RGB.whiteColor,
            backgroundColor: RGB.primaryLightColor,
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(color: RGB.whiteColor),
          headline2: TextStyle(color: RGB.whiteColor),
          headline3: TextStyle(color: RGB.whiteColor),
          headline4: TextStyle(color: RGB.whiteColor),
          headline5: TextStyle(color: RGB.whiteColor),
          headline6: TextStyle(color: RGB.whiteColor),
          subtitle1: TextStyle(color: RGB.whiteColor),
          subtitle2: TextStyle(color: RGB.whiteColor),
          bodyText1: TextStyle(color: RGB.whiteColor),
          bodyText2: TextStyle(color: RGB.whiteColor),
        ),
      ),
      initialRoute: '/',
      getPages: Routes.routes,
    ),
  );
}
