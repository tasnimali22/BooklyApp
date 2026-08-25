import 'package:dio/dio.dart';

class ApiServices {
  // final _baseUrl = 'https://www.googleapis.com/books/v1/';
  // final _apiKey = 'AIzaSyAlLxA-0QU4s05ejhIm4iGehlIYfYxlKzc';
  final Dio _dio;

  ApiServices() : _dio = Dio();
  // ApiServices(this._dio);

  Future<Map<String, dynamic>> get() async {
    var response = await _dio.get(
      "https://www.googleapis.com/books/v1/volumes?q=computer&key=AIzaSyAlLxA-0QU4s05ejhIm4iGehlIYfYxlKzc",
    );
    print(response.statusCode);
    return response.data;
  }
}
