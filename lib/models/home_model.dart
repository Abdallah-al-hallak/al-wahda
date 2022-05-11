import 'dart:convert';

class HomeModel {
  final String name;
  final String picture;
  final String pic;
  final String flag;
  final int number;
  final bool national;
  HomeModel({
    required this.name,
    required this.number,
    required this.picture,
    required this.pic,
    required this.national,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'national': national,
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      name: map['name'] ?? '',
      flag: map['flag'] ?? '',
      number: map['number'] ?? '',
      picture: map['picture'] ?? '',
      pic: map['pic'] ?? '',
      national: map['national'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeModel.fromJson(String source) =>
      HomeModel.fromMap(json.decode(source));
}
