part of '../project_base.dart';

enum HttpMethod { get, post, put, delete, patch }

class ApiService extends GetxService {
  final Dio _client = Dio();

  static ApiService get to => Get.find<ApiService>();

  Future<Response<T>> request<T>({
    required HttpMethod method,
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    ResponseType? responseType = ResponseType.json,
  }) async {
    final response = await _client.request<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
        method: method.name.toUpperCase(),
      ),
    );

    return response;
  }
}
