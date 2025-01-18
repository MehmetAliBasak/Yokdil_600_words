

import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

class DictionaryReader {
  static Map<String, String> dictionary = {};
  Future<void> loadDictionaryFromAssets() async {
    String jsonString = await rootBundle.loadString('assets/dictionary.json');
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    dictionary = jsonMap.cast<String, String>(); // Cast to Map<String, String>  }}
  }
}
