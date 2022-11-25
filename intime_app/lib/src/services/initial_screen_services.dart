import 'package:dio/dio.dart';
import 'package:intime_app/src/provider/intime_htttp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialScreenService extends IntimeHttp {
  SharedPreferences? storage;
  int? userId;

  _loadSharedPreferences() async {
    storage = await SharedPreferences.getInstance();
    return await _setUserId();
  }

  _setUserId() {
    userId = storage?.getInt('key');
  }

  Future<Map<String, dynamic>> getDataCard() async {
    await _loadSharedPreferences();
    Response data = await super.instance.get(
        'http://192.168.1.4:3000/api/students/get-daily-data/$userId',
        options: Options(headers: {'content-type': 'application/json'}));
    return data.data;
  }
}
