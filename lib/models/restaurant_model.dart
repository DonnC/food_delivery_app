class Restaurant {
  int id;
  String food;
  String restaurantName;
  String image;
  double rating;
  int raters; // couldnt find a better name

  Restaurant(this.id, this.food, this.restaurantName, this.image, this.rating,
      this.raters);

  static List<Restaurant> getSpecialOffers() {
    return <Restaurant>[
      Restaurant(1, 'Salad', 'New American', 'img1.jpg', 4.8, 127),
      Restaurant(2, 'Lobster pep', 'Indian maker', 'img3.jpg', 4.7, 87),
      Restaurant(3, 'Cookie bry', 'French American', 'img4.jpg', 4.9, 100),
      Restaurant(4, 'Pie ball', 'Martins Frier', 'img5.jpg', 4.4, 107),
    ];
  }

  static List<Restaurant> getPopularRestaurants() {
    return <Restaurant>[
      Restaurant(5, 'Lobster pep', 'Indian maker', 'img3.jpg', 4.7, 87),
      Restaurant(6, 'Dinner Specisr', 'Indian Makrt', 'img7.jpg', 4.6, 98),
    ];
  }
}
