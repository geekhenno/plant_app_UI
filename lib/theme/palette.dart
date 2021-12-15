import 'package:flutter/material.dart';

class Palette {
  static MaterialColor primary = const MaterialColor(
    0xffe1f2f2, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffcbdada), //10%
      100: Color(0xffb4c2c2), //20%
      200: Color(0xff9ea9a9), //30%
      300: Color(0xff879191), //40%
      400: Color(0xff717979), //50%
      500: Color(0xffe1f2f2), //60%
      600: Color(0xff434949), //70%
      700: Color(0xff2d3030), //80%
      800: Color(0xff161818), //90%
      900: Color(0xff000000), //100%
    },
  );
}
