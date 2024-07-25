import 'package:dio/dio.dart';

class CoreApi {
  late Dio dio;

  CoreApi() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://localhost/',
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30)
    );
    dio = Dio(options);
  }
}