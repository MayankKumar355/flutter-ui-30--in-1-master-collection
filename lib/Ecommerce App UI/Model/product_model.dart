class Product {
  final String title;
  final String description;
  final String image;
  final String price;
  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });
}

class Category {
  final String title;
  Category({required this.title});
}

final List<Category> categoriesList = [
  Category(title: "Chairs"),
  Category(title: "Sofas"),
  Category(title: "Cupboards"),
  Category(title: "Tables"),
  Category(title: "Wardrobes"),
];

final List<Product> chairs = [
  Product(
      title: "Money Chair",
      description:
          "Chair is designed for individual seating, chairs typically feature a backrest and four legs for stability. They come in various styles and materials to suit different environments and needs.",
      image: "https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=500",
      price: "\$80.00"),
  Product(
      title: "Woo Chair",
      description:
          "Chair is designed for individual seating, chairs typically feature a backrest and four legs for stability. They come in various styles and materials to suit different environments and needs.",
      image: "https://images.unsplash.com/photo-1580481072645-022f9a6d83d0?w=500",
      price: "\$65.00")
];

final List<Product> sofas = [
  Product(
      title: "Sofa Chair",
      description:
          "Upholstered seating furniture that can accommodate multiple people, sofas are designed for comfort and relaxation.",
      image: "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=500",
      price: "\$35.00"),
  Product(
      title: "Single Sofa",
      description:
          "Upholstered seating furniture that can accommodate multiple people, sofas are designed for comfort and relaxation.",
      image: "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?w=500",
      price: "\$65.00")
];

final List<Product> cupboards = [
  Product(
      title: "Wave cupboard",
      description:
          " These are storage units with shelves and doors, used for organizing and storing items such as dishes, food, or household supplies. ",
      image: "https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=500",
      price: "\$180.00"),
  Product(
      title: "Woo Cupboard",
      description:
          " These are storage units with shelves and doors, used for organizing and storing items such as dishes, food, or household supplies. ",
      image: "https://images.unsplash.com/photo-1538688525198-9b88f6f53126?w=500",
      price: "\$100.00")
];

final List<Product> table = [
  Product(
      title: "Seito Table",
      description:
          "A piece of furniture with a flat top supported by legs, used for dining, working, or placing objects. Tables come in various shapes, sizes, and materials",
      image: "https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?w=500",
      price: "\$30.00"),
  Product(
      title: "Dining Table",
      description:
          "A piece of furniture with a flat top supported by legs, used for dining, working, or placing objects. Tables come in various shapes, sizes, and materials",
      image: "https://images.unsplash.com/photo-1615066390971-03e4e1c36ddf?w=500",
      price: "\$60.00")
];

final List<Product> wardrobe = [
  Product(
      title: "Modern Wardrobe",
      description:
          " Large cabinet for storing clothes, equipped with hanging space, drawers, and shelves to organize garments effectively. ",
      image: "https://images.unsplash.com/photo-1558997519-83ea9252edf8?w=500",
      price: "\$180.00"),
  Product(
      title: "Wooden Wardrobe",
      description:
          " Large cabinet for storing clothes, equipped with hanging space, drawers, and shelves to organize garments effectively. ",
      image: "https://images.unsplash.com/photo-1540574163026-643ea20ade25?w=500",
      price: "\$150.00")
];
