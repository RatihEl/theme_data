import 'package:flutter/material.dart';

/// For paddings and margins
final double space = 10;

/// Colors
// green
Color green1 = Color(0xff55DD94);
Color green2 = Color(0xff00C09E);
Color green3 = Color(0xff2F4858);

//red
Color white1 = Colors.white;
Color white2 = Colors.white70;
Color red1 = Colors.red;

//yellow
Color black1 = Color(0xFF464646);
Color black2 = Colors.black;
Color amber = Colors.amber;

//blue
Color blue1 = Color(0xff01579B);
Color blue2 = Color(0xff03A9F4);
Color blue3 = Color(0xffE1F5FE);

//brown
Color brown = Color(0xff795548);
Color brown2 = Color(0xff5D4037);
Color brown3 = Color(0xff8D6E63);

/// Shadow
final shadow = BoxShadow(
  color: Colors.black12,
  blurRadius: 32.0,
  offset: Offset(0.0125, 0.0125),
);

//kurang yang icon ataupun button

/// Green theme
final greenThemeData = ThemeData(
  iconTheme: IconThemeData(color: green1),
  primaryColor: green1,
  accentColor: green3,
  
  // textTheme: createTextTheme(
  //   headline1Color: green2,
  //   headline2Color: green2,
  //   headline3Color: white1,
  //   headline4Color: green3,
  //   bodyText1Color: black1,
  //   bodyText2Color: white2,
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(green2),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: space * 0.7, horizontal: space * 1.5),
      ),
    ),
  ),
);

/// Red theme
final redThemeData = ThemeData(
  iconTheme: IconThemeData(color: red1),
  primaryColor: white1,
  accentColor: green3,
  
  // textTheme: createTextTheme(
  //   headline1Color: green2,
  //   headline2Color: green2,
  //   headline3Color: white1,
  //   headline4Color: green3,
  //   bodyText1Color: black1,
  //   bodyText2Color: white2,
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(red1),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: space * 0.7, horizontal: space * 1.5),
      ),
    ),
  ),
);

/// Yellow theme
final yellowThemeData = ThemeData(
  iconTheme: IconThemeData(color: amber),
  primaryColor: amber,
  accentColor: black2,
  
  // textTheme: createTextTheme(
  //   headline1Color: green2,
  //   headline2Color: green2,
  //   headline3Color: white1,
  //   headline4Color: green3,
  //   bodyText1Color: black1,
  //   bodyText2Color: white2,
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(amber),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: space * 0.7, horizontal: space * 1.5),
      ),
    ),
  ),
);

/// blue theme
final blueThemeData = ThemeData(
  iconTheme: IconThemeData(color: blue1),
  primaryColor: blue1,
  accentColor: blue2,
  
  // textTheme: createTextTheme(
  //   headline1Color: green2,
  //   headline2Color: green2,
  //   headline3Color: white1,
  //   headline4Color: green3,
  //   bodyText1Color: black1,
  //   bodyText2Color: white2,
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(blue1),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: space * 0.7, horizontal: space * 1.5),
      ),
    ),
  ),
);

/// Brown theme
final brownThemeData = ThemeData(
  iconTheme: IconThemeData(color: brown),
  primaryColor: brown,
  accentColor: brown3,
  
  // textTheme: createTextTheme(
  //   headline1Color: green2,
  //   headline2Color: green2,
  //   headline3Color: white1,
  //   headline4Color: green3,
  //   bodyText1Color: black1,
  //   bodyText2Color: white2,
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(brown),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(vertical: space * 0.7, horizontal: space * 1.5),
      ),
    ),
  ),
);