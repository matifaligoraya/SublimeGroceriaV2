import 'package:shared_preferences/shared_preferences.dart';

class SublimeDS {
  static final SublimeDS _instance = SublimeDS._internal();

  factory SublimeDS() {
    return _instance;
  }

  SublimeDS._internal();

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Map<String, String> headerOfApi() {
    if (_prefs == null) {
      throw Exception("SublimeDS is not initialized.");
    }

    final token = _prefs!.getString("token");
    return {
      'accept': '/',
      'Content-Type': 'application/json',
      'Authorization': token != null ? 'Bearer $token' : '',
      'Appkey': 'key ${Constants.apikey}',
    };
  }

  Future<void> saveToken(String token) async {
    if (_prefs == null) {
      throw Exception(
          "SublimeDS is not initialized. Call `await SublimeDS().init()` first.");
    }

    await _prefs!.setString("token", token);
  }

  bool isTokenValid() {
    final token = getToken();
    return token != null && token.isNotEmpty;
  }

  String? getToken() {
    if (_prefs == null) {
      throw Exception(
          "SublimeDS is not initialized. Call `await SublimeDS().init()` first.");
    }

    return _prefs!.getString("token");
  }

  Future<void> saveUserId(String userId) async {
    if (_prefs == null) {
      throw Exception("SublimeDS is not initialized.");
    }

    await _prefs!
        .setString("userId", userId); // Save userId to SharedPreferences
  }

  String? getUserId() {
    if (_prefs == null) {
      throw Exception("SublimeDS is not initialized.");
    }

    return _prefs!.getString("userId");
  }
}

class Constants {
  static const String apikey =
      "M24YmaytTpnH0XvYBItY8wRNxvK2+qa5Q+h0sCP4ldHF+01CMT0g9o+LUkyxndr2Sso4bRjRJyy5UZVYuyYbGb5tR1bDW83TH/XBZFw8K7gl3wtKiMEjCnxpSQsiP/wkP3XZLP1TTVgAFgpO7Ynp9SSBrDTfzgK6+aUBnJl/R/5csXIGUXYAlelH80ZRb2xe/u1YOj2UxsmcIOAnh78679nv4lisb8nsMp2Cg5AJWwqrkUsV+EVEZFdCqnlrNLOkyygIID+hx2LS87GWUFYuWf4HmQmLea0R+M47s4s0hISVMLk1KxOehTijQlj9jdZKVd/Q88+QUn+VQqcmP+miHTgHONrCnmmltUPJVyv6XZDCY5GIQ+A5SPtEdKuv8m5i5imSZK3cxUOJukLgZFx1F595PMXVZ2iRkIprozTYlhMyElR6ryz9g2QjE+ik+mnNJFG50T8pTQvIM4WGkwqOh/4MIBmREkasGUZamBOR8pCWrVRAKyZxksOj3fOA19sRzIe8GHV9+/pTlc/KKhuSJIZ3zurK16eR0/HC+DRlW5kbFyuFsVZqCgmp6+xnoy++P1GwHtVZAAoegwwfRBQuIJnx02N5bZy4UmtHuSBMTKc=";
}
