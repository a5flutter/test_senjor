import 'dart:async';

import 'package:dio/dio.dart';
import 'package:test_app/http/http_client.dart';
import 'package:test_app/http/http_errors.dart';

class CountryRepository {
  Dio dio = HttpClient().instance;

  Future<dynamic> get(String path) async {
    try {
      final Response response = await dio.get(path);
      return response;

    }  on TimeoutException catch (e) {
      HttpErrors.pushError('Error connecting to server - $e');
    } catch (e) {
      HttpErrors.pushError('Error connecting to server - $e');
    }
  }
}
