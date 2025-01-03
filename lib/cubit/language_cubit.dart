import 'package:bloc/bloc.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageEnglish()); // Default language is English

  // Toggle between languages
  void toggleLanguage() {
    if (state is LanguageEnglish) {
      emit(LanguageUrdu());
    } else {
      emit(LanguageEnglish());
    }
  }

  // Optionally, set the language explicitly
  void setLanguage(String languageCode) {
    if (languageCode == 'ur') {
      emit(LanguageUrdu());
    } else {
      emit(LanguageEnglish());
    }
  }
}
