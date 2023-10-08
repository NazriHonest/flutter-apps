class Furniture {
  String id;
  String name;
  String imgUrl;
  double price;
  String description;
  String rate;
  int? qty = 1;
  bool isFavorite = false;

  Furniture({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.description,
    required this.rate,
    this.qty,
  });
}
