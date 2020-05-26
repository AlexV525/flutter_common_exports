///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020/5/26 13:35
///
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

num lessThanOne(num value) => math.min(1, value);

num lessThanZero(num value) => math.min(0, value);

num moreThanOne(num value) => math.max(1, value);

num moreThanZero(num value) => math.max(0, value);

num betweenZeroAndOne(num value) => moreThanZero(lessThanOne(value));

DateTime get currentTime => DateTime.now();

int get currentTimeStamp => currentTime.millisecondsSinceEpoch;

Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];

Iterable<Locale> get supportedLocales => [
      const Locale.fromSubtags(
        languageCode: 'zh',
      ),
      const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hans',
      ),
      const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant',
      ),
      const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hans',
        countryCode: 'CN',
      ),
      const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant',
        countryCode: 'TW',
      ),
      const Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant',
        countryCode: 'HK',
      ),
    ];
