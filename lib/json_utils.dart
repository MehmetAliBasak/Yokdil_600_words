import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:yokdil_app/words.dart';

import 'Word.dart';
class JsonUtils {
  // Method to write a list of Word objects to a JSON file
  static Future<void> writeLearnedWordsToFile(List<String> list) async {
    // Convert the list of Word objects to a JSON string
    String jsonString = jsonEncode(list);
    // Write the JSON string to the specified file
    final file = await _learnedWordsFile;

    file.writeAsString(jsonString);
    print("learned: " + list.toString());

  }
  static Future<void> initialize() async {
    //check if the file exists
    final file = await _learnedWordsFile;

    print("wrote to: " + file.path);
    if (!file.existsSync()) {
      file.create();
      String jsonString = jsonEncode([]);
      file.writeAsString(jsonString);
    }
    final file2 = await _notLearnedWordsFile;
    if (!file2.existsSync()) {
      file2.create();
      String jsonString = jsonEncode(Words.words_english);
      file2.writeAsString(jsonString);
    }
  }

  static Future<void> writeNotLearnedWordsToFile(List<String> list) async {
    // Convert the list of Word objects to a JSON string
    String jsonString = jsonEncode(list);
    // Write the JSON string to the specified file
    final file = await _notLearnedWordsFile;

    file.writeAsString(jsonString);
    print("not learned: " + list.toString());

  }
  static Future<List<String>> readLearnedWordsFromFile() async {
    try {
      // Read the contents of the file
      final file = await _learnedWordsFile;
      String contents = await file.readAsString();
      // Convert the JSON string to a list of Word objects
      List<dynamic> jsonList = jsonDecode(contents);
      List<String> list = jsonList.cast<String>();
      return list;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
  static Future<List<String>> readNotLearnedWordsFromFile() async {
    try {
      // Read the contents of the file
      final file = await _notLearnedWordsFile;
      String contents = await file.readAsString();
      // Convert the JSON string to a list of Word objects
      List<dynamic> jsonList = jsonDecode(contents);
      List<String> list = jsonList.cast<String>();
      return list;
    } catch (e) {
      print(e.toString());
      // If an error occurs, return an empty list
      return [];
    }
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
  static Future<File> get _learnedWordsFile async {
    final path = await _localPath;
    return File('$path/learned.txt');
  }
  static Future<File> get _notLearnedWordsFile async {
    final path = await _localPath;
    return File('$path/not_learned.txt');
  }
}
