import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPref {

  // read(String key) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return json.decode(prefs.getString(key));
  // }

  contain(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.containsKey(key);
  }

  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }


  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  saveList(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, value);
  }

  readList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  clear() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  getKey(key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }
  //by lisa
  saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('key', "value");
  }
// getValue() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //Return String
//   String stringValue = prefs.getString('key');
//   return stringValue;
// }
}