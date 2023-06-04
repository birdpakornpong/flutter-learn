import 'dart:developer';

import 'package:http/http.dart' as http;

import '../model/citymodel.dart';

Future<ExchangeRate> getCityWeather({required String city}) async {
  String uri =
      'https://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid=92f90171a9639b008090aa98c05df965&fbclid=IwAR2Tco7G_PpVy4zDBpUgi21uwncFH1H0i-C3vbZSBlbZM98CQSR71mmaJ08';

  try {
    final res = await http.get(Uri.parse(uri));
    log(res.body);
    if (res.statusCode == 200) {
      return exchangeRateFromJson(res.body);
    } else {
      throw ('No wea');
    }
  } catch (e) {
    throw ('Cannot connect to the service');
  }
}
