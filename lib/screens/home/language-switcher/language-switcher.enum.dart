import 'dart:ui';

enum Language {
  en(Locale('en'), 'English'),
  ru(Locale('ru'), 'Русский'),
  uk(Locale('uk'), 'Українська');

  const Language(this.locale, this.title);

  final Locale locale;
  final String title;
}
