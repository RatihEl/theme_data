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

import 'colors/app_colors.dart';

abstract class CompanyColors {
  final Brightness currentBrightness;

  CompanyColors(this.currentBrightness);

  ColorScheme darkColorScheme;
  ColorScheme lightColorScheme;
  ColorScheme get colorScheme => _isDark() ? darkColorScheme : lightColorScheme;

  final supplementaryAccentColors = [
    AppColors.veroneseGreen,
    AppColors.tomato,
    AppColors.vividSky,
    AppColors.champagne,
    AppColors.mauve,
  ];

  List<Color> get _supplementaryLightColors => supplementaryAccentColors.map((e) => e.shade400).toList();
  List<Color> get _supplementaryDarkColors => supplementaryAccentColors.map((e) => e.shade200).toList();
  List<Color> get supplementaryColors => _isDark() ? _supplementaryDarkColors : _supplementaryLightColors;

  HeatmapColors heatmapColors;

  Color get dividerColor => _isDark() ? AppColors.onyx : AppColors.shadow;
  Color get shadowColor => _isDark() ? AppColors.transparent : AppColors.shadow;

  AlertLevels get alertLevels => AlertLevels(
        alert: Colors.red,
        warning: _isDark() ? AppColors.brightSun.shade200 : AppColors.brightSun.shade700,
        neutral: Colors.grey.shade500,
        safe: _isDark() ? AppColors.green.shade300 : AppColors.green.shade700,
      );

  bool _isDark() => currentBrightness == Brightness.dark;
}
