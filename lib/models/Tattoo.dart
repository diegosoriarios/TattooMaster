class Tattoo {
  String id;
  String image;

  Tattoo({this.id, this.image});

  factory Tattoo.fromJson(Map<String, dynamic> json) {
    return Tattoo(
      id: json['id'],
      image: json['image']
    );
  }
}