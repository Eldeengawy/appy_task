import 'package:app_task/core/apis/endpoints.dart';
import 'package:dio/dio.dart';

class DioHelper {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
    ),
  );

  Future<Map<String, dynamic>> get(String pathUrl) async {
    return _dio.get(pathUrl) as Map<String, dynamic>;
  }
  Future<Map<String,dynamic>> post(String pathUrl,Map<String,dynamic> data) async {
    return _dio.post(pathUrl,data: data) as Map<String,dynamic>;
  }
}
