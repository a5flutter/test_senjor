// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:pet_walk/models/user.dart';
// import 'package:pet_walk/repositories/repositories.dart';
// import 'package:pet_walk/utils/api_url.dart';
// import 'package:pet_walk/utils/local_storage.dart';
//
// class AuthInterceptorDio implements InterceptorsWrapper {
//   AuthInterceptorDio(this._dio);
//
//   static const _authorization = 'Authorization';
//   final Dio _dio;
//   String token;
//
//   @override
//   Future onRequest(RequestOptions options) async {
//
//     _dio.interceptors.requestLock.lock();
//
//     token ??= 'Bearer ${await LocalStorage().getToken()}';
//     if(token != null) {
//       options.headers.addAll({
//         _authorization: token,
//       });
//     }
//
//     _dio.interceptors.requestLock.unlock();
//     return options;
//   }
//
//   @override
//   Future onResponse(Response response) async {
//     return response;
//   }
//
//   @override
//   Future onError(DioError error) async {
//     // Assume 401 stands for token expired
//     if (error.response?.statusCode == 401) {
//       final RequestOptions options = error.response.request;
//       // If the token has been updated, repeat directly.
//       if (token != options.headers[_authorization]) {
//         options.headers[_authorization] = token;
//         //repeat
//         return _dio.request(options.path, options: options);
//       }
//       // update token and repeat
//       // Lock to block the incoming request until the token updated
//       _dio.lock();
//       _dio.interceptors.responseLock.lock();
//       _dio.interceptors.errorLock.lock();
//       //update token
//       final String newToken = await refreshToken(token);
//       if (newToken == '401' || newToken == null){
//         return error;
//       } else {
//         token = 'Bearer $newToken';
//         await LocalStorage().saveToken(newToken);
//         options.headers[_authorization] = token;
//         //Unlock incoming requests
//         _dio.unlock();
//         _dio.interceptors.responseLock.unlock();
//         _dio.interceptors.errorLock.unlock();
//         return _dio.request(options.path, options: options);
//       }
//     }
//     return error;
//   }
//
//
//   Future<String> refreshToken(String oldToken) async {
//     debugPrint('AuthorisationService.refreshToken');
//     try {
//       final User user = User.fromJson(await Repositories().get(refreshTokenEndPoint, {
//         'Authorization': oldToken}) as Map<String, dynamic>);
//       debugPrint('AuthenticationService.refreshToken token received - ${user.data.token}');
//       return user.data.token;
//     }catch(error){
//       debugPrint('AuthenticationService.refreshToken error - $error');
//       if (error.toString() == 'Exception: 401'){
//         return '401';
//       }
//     }
//     return null;
//   }
// }
