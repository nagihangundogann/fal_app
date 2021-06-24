import 'dart:convert';
import 'package:fal_app/json/albums_models.dart';
import 'package:http/http.dart' as http;
Future<List<Konu>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://gist.githubusercontent.com/nagihangundogann/03762f75b0a9131190785c0482f4221e/raw/298e1481fbbc05f0d6bd188c4e12a0b4360930f5/konu.json'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Konu.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}