import 'package:pagination_example/api/my_api_provider.dart';
import 'package:pagination_example/model/my_model.dart';

class HomeRepository {
  final myApiProvider = MyApiProvider();

  Future<MyModel> fetchList(page) => myApiProvider.fetchList(page);
}
