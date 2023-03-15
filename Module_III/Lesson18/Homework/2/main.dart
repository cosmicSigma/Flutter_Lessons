import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiPhoto, 1).then((value) => parseJsonPhoto(value));
  http.close();
}

void parseJsonPhoto(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Photo photo = Photo.fromJson(json);
  print(photo.albumId);
  print(photo.id);
  print(photo.title);
  print(photo.url);
  print(photo.thumbnailUrl);
  print(photo);
}