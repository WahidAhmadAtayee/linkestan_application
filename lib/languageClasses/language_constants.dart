import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LANGUAGE_CODE = 'languageCode';

// language code
const String ENGLISH = 'en';
const String FARSI = 'fa';
const String PASHTO = 'ps';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode){
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'US');
    case FARSI:
      return Locale(FARSI, 'IR');
    case PASHTO:
      return Locale(PASHTO, 'AF');
    default:
      return Locale(ENGLISH, 'US');
  }
}

AppLocalizations translation(BuildContext context){
  return AppLocalizations.of(context)!;
}
