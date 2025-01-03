part of 'language_cubit.dart';

abstract class LanguageState {
  const LanguageState();

  // Add a getter for language code
  String get languageCode;
}

class LanguageEnglish extends LanguageState {
  @override
  String get languageCode => 'en'; // English language code
}

class LanguageUrdu extends LanguageState {
  @override
  String get languageCode => 'ur'; // Urdu language code
}
