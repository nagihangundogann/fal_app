import 'dart:convert';

List<Konu> konuFromJson(String str) => List<Konu>.from(json.decode(str).map((x) => Konu.fromJson(x)));

String konuToJson(List<Konu> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Konu {
  Konu({
    this.title,
  });

  String title;

  factory Konu.fromJson(Map<String, dynamic> json) => Konu(
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
  };
}
