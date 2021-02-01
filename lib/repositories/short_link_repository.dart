import 'dart:async';

import 'package:dio/dio.dart';
import 'package:test_app/http/http_client.dart';
import 'package:test_app/http/http_errors.dart';
import 'package:test_app/models/response_model.dart';

class ShotLinkRepository {
  Dio dio = HttpClient().instance;

  Future<dynamic> get(String path, Map <String, dynamic> params) async {
    try {
      final Response response = await dio.get(path);
      dio.options.queryParameters.clear();
      dio.options.queryParameters.addAll(params);
      ResponseModel responseModel = ResponseModel.fromJson(response.data as Map<String, dynamic>);

      if(responseModel.ok){
        return responseModel.result;
      }

      HttpErrors.pushError('Server error - ${responseModel.error}');
      return null;
    }  on TimeoutException catch (e) {
      HttpErrors.pushError('Error connecting to server - $e');
    } catch (e) {
      HttpErrors.pushError('Error connecting to server - $e');
    }
  }
}
