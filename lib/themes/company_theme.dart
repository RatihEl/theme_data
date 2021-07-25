/*
 * Copyright 2020 Cagatay Ulusoy (Ulus Oy Apps). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:theme_data/colors/ata_colors.dart';
import 'package:theme_data/colors/biohack_colors.dart';
import 'package:theme_data/colors/codeland_colors.dart';
import 'package:theme_data/icon/ata_icons.dart';
import 'package:theme_data/icon/biohack_icons.dart';
import 'package:theme_data/icon/codeland_icons.dart';
import 'package:theme_data/icon/company_icons.dart';
import 'package:theme_data/shape/ata_shapes.dart';
import 'package:theme_data/shape/biohack_shapes.dart';
import 'package:theme_data/shape/codeland_shapes.dart';
import 'package:theme_data/shape/company_shapes.dart';
import 'package:theme_data/text/biohack_text_theme.dart';
import 'package:theme_data/text/codeland_text_theme.dart';
import 'package:theme_data/themes/text/ata_text_theme.dart';
import 'package:theme_data/themes/text/company_text_theme.dart';
import 'package:theme_data/themes/theme_data/ata_theme_data.dart';
import 'package:theme_data/themes/theme_data/biohack_theme_data.dart';
import 'package:theme_data/themes/theme_data/codeland_theme_data.dart';

import '../company_colors.dart';

class CompanyTheme {
  final Brightness brightness;
  CompanyColors colors;
  CompanyTextTheme textTheme;
  CompanyShapes shapes;
  CompanyIcons icons;
  ThemeData themeData;

  CompanyTheme.ata(this.brightness) {
    colors = AtaColors(brightness) as CompanyColors;
    textTheme = AtaTextTheme(colors);
    shapes = AtaShapes(colors);
    icons = AtaIcons();
    themeData = AtaThemeData(brightness, colors, textTheme, shapes).themeData;
  }

  CompanyTheme.biohack(this.brightness) {
    colors = BiohackColors(brightness) as CompanyColors;
    textTheme = BiohackTextTheme(colors) as CompanyTextTheme;
    shapes = BiohackShapes(colors);
    icons = BiohackIcons();
    themeData = BiohackThemeData(brightness, colors, textTheme, shapes).themeData;
  }

  CompanyTheme.codeland(this.brightness) {
    colors = CodelandColors(brightness) as CompanyColors;
    textTheme = CodelandTextTheme(colors) as CompanyTextTheme;
    shapes = CodelandShapes(colors);
    icons = CodelandIcons();
    themeData = CodelandThemeData(brightness, colors, textTheme, shapes).themeData;
  }
}
