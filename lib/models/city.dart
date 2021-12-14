class City {
  late int id;
  late String name;
  late String image_url;
  bool isPopular;

  City(
      {required this.id,
      required this.name,
      required this.image_url,
      this.isPopular = false});
}
