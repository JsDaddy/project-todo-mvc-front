import 'package:get/get.dart';

abstract class Translation {}

extension Translations on Translation {
  String get st => '$this';
  String get tr => st.tr;
}

extension MapEnumExtensions on Map<Translation, String> {
  Map<String, String> get st => Map<String, String>.fromEntries(entries.map(
      (MapEntry<Translation, String> entry) =>
          MapEntry<String, String>(entry.key.st, entry.value)));
}
