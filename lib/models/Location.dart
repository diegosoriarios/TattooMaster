import 'package:http/http.dart' as http;
import 'dart:convert' as converter;

class Location {
  double latitude;
  double longitude;
  String name = "";

  Location(double latitude, double longitude) {
    this.latitude = latitude;
    this.longitude = longitude;
    getLocationName();
  }

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      json['latitude'],
      json['longitude']
    );
  }

  final APIKEY = "621d2c7564204444b6e8f8553c137061";

  void getLocationName() async {
    var URL = "https://api.opencagedata.com/geocode/v1/json?q=${this.latitude}+${this.longitude}&key=$APIKEY";

    try {
      final response = await http.get(URL);
      var json = converter.jsonDecode(response.body);

      this.name = json['results'][0]['components']['city'];
    } catch(e) {
      this.name = "";
      print(e);
    }
  }
}