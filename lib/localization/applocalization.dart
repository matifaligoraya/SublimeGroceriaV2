import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SublimeLocal {
  final Locale locale;
  late Map<String, String> localizedStrings;

  static const LocalizationsDelegate<SublimeLocal> delegate =
      _AppLocalizationsDelegate();

  SublimeLocal(this.locale);

  static SublimeLocal of(BuildContext context) {
    return Localizations.of<SublimeLocal>(context, SublimeLocal)!;
  }

  // This method loads the language JSON file asynchronously
  Future<bool> load() async {
    try {
      // Load the language JSON file from the "lang" folder
      String jsonString = await rootBundle
          .loadString('assets/lang/${locale.languageCode}.json');
      Map<String, dynamic> jsonMap = json.decode(jsonString);

      localizedStrings = jsonMap.map((key, value) {
        return MapEntry(key,
            value.toString().replaceAll(r"\'", "'").replaceAll(r"\t", " "));
      });

      return true;
    } catch (e) {
      print("Error loading localization file for ${locale.languageCode}: $e");
      localizedStrings = {};
      return false;
    }
  }

  String translate(String key) {
    // Return a fallback string if the key is not found
    return localizedStrings[key] ?? key;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<SublimeLocal> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include Urdu ('ur') in the supported locales list
    return ['en', 'es', 'da', 'ur'].contains(locale.languageCode);
  }

  @override
  Future<SublimeLocal> load(Locale locale) async {
    SublimeLocal localizations = SublimeLocal(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
