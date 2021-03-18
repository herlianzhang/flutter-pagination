class MyModel {
  int? id;
  String? title;
  String? body;

  MyModel.fromJson(json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}
