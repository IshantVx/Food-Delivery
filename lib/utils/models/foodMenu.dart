class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategories categories;
  List<Addon> availableAddon;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.categories,
    required this.availableAddon,
  });
}

// food categories
enum FoodCategories { burger, salads, sides, desert, drinks }

class Addon {
  final String name;
  final double price;

  Addon({required this.name, required this.price});
}
