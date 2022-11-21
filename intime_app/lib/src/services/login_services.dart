import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:intime_app/src/provider/intime_htttp.dart';

class LoginService extends IntimeHttp {
  Future<bool> validateUser(String email, String senha) async {
    Response user = await super.instance.post(
        'http://192.168.1.4:3000/api/students/login',
        data: {'email': email, 'senha': senha});
    if (user.data) {
      return true;
    }
    return false;
  }
}
