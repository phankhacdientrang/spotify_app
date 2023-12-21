import 'package:flutter/material.dart';
class DeclareColor {
  static const Color bgColor =  Color.fromARGB(255,28, 27, 27);
  static const Color greenColor =  Color.fromARGB(255,66, 200, 60);
  static const Color whiteColor =  Color.fromARGB(255,255, 255, 255);
  static const Color lightGrey =  Color.fromARGB(255, 77, 77, 77);

}
class CustomText {
  static const TextStyle text0 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
  );
  static const TextStyle text1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 19,
    color: Colors.white,
  );
  static const TextStyle text2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.white,
  );
  static const TextStyle text3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.white,
  );
  static const TextStyle text4 = TextStyle(
    fontSize: 13,
    color: Colors.white,
  ); static const TextStyle text5 = TextStyle(
    fontSize: 10,
    color: Colors.white,
  );
}
class  ThemeDataClass {
  static  ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: DeclareColor.bgColor,
      colorScheme: const ColorScheme(
          primary: DeclareColor.bgColor,
          brightness: Brightness.dark,
          onPrimary: DeclareColor.bgColor,
          secondary: DeclareColor.greenColor,
          onSecondary: DeclareColor.greenColor,
          background: DeclareColor.bgColor,
          onBackground: DeclareColor.bgColor,
          error: Colors.red,
          onError: Colors.red,
          surface: DeclareColor.whiteColor,
          onSurface: DeclareColor.whiteColor,
          onSecondaryContainer: DeclareColor.lightGrey
      ),
      listTileTheme: const ListTileThemeData(
          dense: true,
          contentPadding: EdgeInsets.all(0)
      ),
      sliderTheme: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb
      ),
      textTheme: const TextTheme(
        headline1: CustomText.text0,
        headline2: CustomText.text1,
        headline3: CustomText.text2,
        headline4: CustomText.text3,
        headline5: CustomText.text4,
        subtitle1: CustomText.text5,
      )
  );
}