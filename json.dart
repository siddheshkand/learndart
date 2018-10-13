import 'dart:convert';

void main() {
  var rawJson = '{"url":"https://raw.io","id":1}';
  var parsedJson = json.decode(rawJson);

  var imgModel = ImageModel.fromJson(parsedJson);

  print(imgModel.url);
  print(imgModel.id);
}

class ImageModel {
  String url;
  int id;

  ImageModel({this.id, this.url});

  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}
