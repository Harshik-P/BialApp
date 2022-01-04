import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _key = "signInToken";

class CheckSignIn {
  final storage = const FlutterSecureStorage();
  Future<void> check() async {
    try {
      await storage.read(key: _key);
      MaintainPageStack.keyCheckValue = true;
    } on TypeError {
      MaintainPageStack.keyCheckValue = false;
    }
  }
}

class MaintainPageStack {
  static bool keyCheck = false;
  static int top = -1;
  static var pages = [];

  static set keyCheckValue(keyCheck) => keyCheck;
}
