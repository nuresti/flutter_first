import 'dart:convert';

import 'package:crypto/crypto.dart';

class DataEncryptor {
  static String encrypt(dynamic value) {
    var bytes = utf8.encode(value + DateTime.now().toString());
    var hexPassword = sha1.convert(bytes);

    return hexPassword.toString();
  }
}
