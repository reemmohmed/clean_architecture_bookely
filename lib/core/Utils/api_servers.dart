import 'package:dio/dio.dart';

class ApiServers {
  final Dio _dio;

  ApiServers(this._dio);
  final paseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respons = await _dio.get('$paseUrl$endpoint');
    return respons.data;
  }
}
