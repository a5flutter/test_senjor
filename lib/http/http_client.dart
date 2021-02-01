

import 'package:dio/dio.dart';
import 'package:test_app/utils/api_url.dart';

import 'auth_interceptor_dio.dart';

class HttpClient {
  HttpClient({BaseOptions options}) {
    options ??= baseOptions;
    _dio = Dio(options);
    // _dio.interceptors.addAll([
    //   AuthInterceptorDio(_dio),
    // ],);
  }

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 20000,
    receiveTimeout: 20000,
  );

  Dio _dio;

  Dio get instance => _dio;
}
