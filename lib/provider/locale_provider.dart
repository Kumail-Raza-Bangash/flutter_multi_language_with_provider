import 'package:flutter/material.dart';
import 'package:flutter_multi_language_with_provider/l10n/l10n.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
      _locale = locale;
      notifyListeners();
    
  }
}
