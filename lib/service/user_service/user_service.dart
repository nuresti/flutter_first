import 'package:dio/dio.dart';

class UserService {
  static Future<List> getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj['data'];
  }

  static update() {}
  static delete() {}
  static deleteAll() {}
}
