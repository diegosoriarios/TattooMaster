import 'package:tattomaster/models/Location.dart';
import 'package:tattomaster/models/Tattoo.dart';

class User {
  String userId;
  String name;
  String avatar;
  Location location;
  double reviews;
  int totalReviews;
  List<Tattoo> tattoos;

  User({
    this.userId,
    this.name,
    this.avatar,
    this.location,
    this.reviews,
    this.totalReviews,
    this.tattoos
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      avatar: json['avatar'],
      location: json['location'],
      reviews: json['reviews'],
      totalReviews: json['totalReviews'],
      tattoos: json['tatoos'],
    );
  }
}