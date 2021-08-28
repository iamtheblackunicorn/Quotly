import 'variables.dart';
import 'package:dio/dio.dart';

class APIHandler {
  Future<Map<String, dynamic>> get responseData async {
    try {
      Response response = await dio.get(
        quotesURL,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    } catch (e) {
      Response response = await dio.get(
        quotesURL,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    }
  }
  Future<Map<String,dynamic>> readData() async {
    Future<Map<String, dynamic>> data = responseData;
    return data;
  }
}
