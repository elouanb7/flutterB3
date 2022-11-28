class Product {
  String nom;
  String description;
  num prix;
  String image;
  String categorie;
  num rating;

  Product(this.nom, this.description, this.prix, this.image, this.categorie,
      this.rating);

  Product.fromJson(Map<String, dynamic> json)
      : nom = json["title"],
        description = json["description"],
        prix = json["price"],
        image = json["image"],
        categorie = json["category"],
        rating = json["rating"]["rate"];

  String displayPriceInEuro() => "$prix €";

  double getRating() {
    return rating.toDouble();
  }

  set setRating(num value) {
    rating = value;
  }
}