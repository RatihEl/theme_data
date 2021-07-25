import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'constant.dart';



class ThemeChanger extends ChangeNotifier {
  final greenThemeMode = {'mode': 'green', 'themeData': greenThemeData};
  final redThemeMode = {'mode': 'red', 'themeData': redThemeData};
  final yellowThemeMode = {'mode': 'yellow', 'themeData': yellowThemeData};
  final blueThemeMode = {'mode': 'blue', 'themeData': blueThemeData};
  final brownThemeMode = {'mode': 'brown', 'themeData': brownThemeData};


  /// Selecting theme
  Map<String, dynamic> themeDataInfo;

  ThemeChanger(
    this.themeDataInfo,
  ) {
    if (themeMode == 'green') {
      this.themeDataInfo = greenThemeMode;
    } if (themeMode == 'red') {
      this.themeDataInfo = redThemeMode;
    } if (themeMode == 'yellow') {
      this.themeDataInfo = yellowThemeMode;
    } if (themeMode == 'blue') {
      this.themeDataInfo = blueThemeMode;
    } 
    else if (themeMode == 'brown') {
      this.themeDataInfo = brownThemeMode;
    }
  }

  get themeMode => null;

  /// Get ThemeData for the current theme
  ThemeData getThemeData() => this.themeDataInfo['themeData'];

  /// Get the theme mode name
  String getThemeMode() => this.themeDataInfo['mode'];

  /// THEME SETTERS

  /// Change theme to green
  void setGreenTheme() {
    this.themeDataInfo = greenThemeMode;
    // notifyListeners();
  }

  /// Change theme to red
  void setRedTheme() {
    this.themeDataInfo = redThemeMode;
    // notifyListeners();
  }

   /// Change theme to red
  void setYellowTheme() {
    this.themeDataInfo = yellowThemeMode;
    // notifyListeners();
  }

 /// Change theme to red
  void setblueTheme() {
    this.themeDataInfo = blueThemeMode;
    // notifyListeners();
  }

   /// Change theme to red
  void setBrownTheme() {
    this.themeDataInfo = brownThemeMode;
    // notifyListeners();
  }


  // /// Toggle theme
  // void toggleTheme() {
  //   if (this.themeDataInfo['mode'] == 'green') {
  //     this.themeDataInfo = greenThemeMode;
  //   } else if (this.themeDataInfo['mode'] == 'purple') {
  //     this.themeDataInfo = greenThemeMode;
  //   }

  //   notifyListeners();
  // }

  ThemeChanger copyWith({
    Map<String, dynamic>? themeDataInfo,
  }) {
    return ThemeChanger(
      themeDataInfo ?? this.themeDataInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'themeDataInfo': themeDataInfo,
    };
  }

  factory ThemeChanger.fromMap(Map<String, dynamic> map) {
    return ThemeChanger(
      Map<String, dynamic>.from(map['themeDataInfo']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeChanger.fromJson(String source) => ThemeChanger.fromMap(json.decode(source));

  @override
  String toString() => 'ThemeChanger(themeDataInfo: $themeDataInfo)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ThemeChanger &&
      mapEquals(other.themeDataInfo, themeDataInfo);
  }

  @override
  int get hashCode => themeDataInfo.hashCode;
}