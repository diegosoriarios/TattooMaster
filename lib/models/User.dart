import 'package:tattomaster/models/Tattoo.dart';

class User {
  String userId;
  String name;
  Location location;
  double reviews;
  int totalReviews;
  List<Tattoo> tattoos;

  User({
    this.userId,
    this.name,
    this.location,
    this.reviews,
    this.totalReviews,
    this.tattoos
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      location: json['location'],
      reviews: json['reviews'],
      totalReviews: json['totalReviews'],
      tattoos: json['tatoos'],
    );
  }
}

class Location {
  double latitude;
  double longitude;

  Location({this.latitude, this.longitude});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      latitude: json['latitude'],
      longitude: json['longitude']
    );
  }
}