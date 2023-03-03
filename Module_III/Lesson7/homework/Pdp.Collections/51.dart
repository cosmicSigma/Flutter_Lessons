import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkService {
  final String baseUrl;
  final Map<String, String> headers;

  NetworkService({required this.baseUrl, required this.headers});

  Future<T> post<T>(String endpoint, dynamic body) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    } else {
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  }

  Future<T> get<T>(String endpoint) async {
    final response =
    await http.get(Uri.parse('$baseUrl/$endpoint'), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    } else {
      throw Exception('Failed to get data: ${response.statusCode}');
    }
  }

  Future<T> put<T>(String endpoint, dynamic body) async {
    final response = await http.put(Uri.parse('$baseUrl/$endpoint'),
        headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    } else {
      throw Exception('Failed to put data: ${response.statusCode}');
    }
  }

  Future<T> delete<T>(String endpoint) async {
    final response =
    await http.delete(Uri.parse('$baseUrl/$endpoint'), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    } else {
      throw Exception('Failed to delete data: ${response.statusCode}');
    }
  }

  Future<T> patch<T>(String endpoint, dynamic body) async {
    final response = await http.patch(Uri.parse('$baseUrl/$endpoint'),
        headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as T;
    } else {
      throw Exception('Failed to patch data: ${response.statusCode}');
    }
  }

  Future<T> multipart<T>(String endpoint,
      {required Map<String, String> fields,
        required List<Map<String, dynamic>> files}) async {
    final request = http.MultipartRequest('POST', Uri.parse('$baseUrl/$endpoint'))
      ..headers.addAll(headers);

    fields.forEach(request.fields.addAll);

    for (var file in files) {
      request.files.add(await http.MultipartFile.fromPath(
          file['field'] as String, file['path'] as String,
          filename: file['filename'] as String,
          contentType: http.MediaType(file['mimeType'] as String, null)));
    }

    final response = await request.send();
    final responseString = await response.stream.bytesToString();
    if (response.statusCode == 200) {
      return jsonDecode(responseString) as T;
    } else {
      throw Exception('Failed to send multipart data: ${response.statusCode}');
    }
  }
}
