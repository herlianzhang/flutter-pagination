import 'dart:convert';

import 'package:http/http.dart' show get;
import 'package:pagination_example/model/my_model.dart';

class MyApiProvider {
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  Future<MyModel> fetchList(int page) async {
    final response =
        await get(Uri.parse('$_baseUrl/posts?_start=$page&_limit=10'));
    try {
      if (response.statusCode == 200) {
        return json.decode(response.body).map((data) => MyModel.fromJson(data));
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      print('The error is $e');
      throw Exception(e);
    }
  }
}
