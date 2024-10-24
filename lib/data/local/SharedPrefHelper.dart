import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static const String fullName = 'fullName';
  static const String email = 'email';
  static const String insuranceName = 'insuranceName';
  static const String policyNumber = 'policyNumber';
  static const String password = 'password';
  static const String dob = 'dob';
  static const String ssn = 'ssn';
  static const String race = 'race';
  static const String height = 'height';
  static const String weight = 'weight';
  static const String gender = 'gender';
  static const String loginType = 'loginType';
  static const String userId = 'userId';
  static const String accessToken = 'accessToken';


  static Future<void> saveData(String key, String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, data);
  }

  static Future<String?> getData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
  static Future<bool> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }
}