import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiAlbums, 1).then((value) => parseJsonAlbum(value));
  http.close();
}

void parseJsonAlbum(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Album album = Album.fromJson(json);
  print(album.userId);
  print(album.id);
  print(album.title);
  print(album);
}