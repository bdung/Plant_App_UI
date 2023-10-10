class PlantCardItem {
  final String title;
  final String image;
  final String country;
  final String category;
  final String description;
  final String description_sun;
  final String description_wind;
  final String description_temperature;
  final String description_humidity;

  final int price, star, stock;
  PlantCardItem(
     {
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    this.category = "",
    this.description = "",
    this.description_sun = "",
    this.description_wind = "",
    this.description_temperature= "" ,
    this.description_humidity= "",
    this.star = 5,
    this.stock = 100,
  });
}
