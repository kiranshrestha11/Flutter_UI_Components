class ProductDetailModel {
  final String brand, title, color, material;
  final String safety, description, durability;

  ProductDetailModel({
    required this.brand,
    required this.title,
    required this.color,
    required this.material,
    required this.safety,
    required this.description,
    required this.durability,
  });
}

ProductDetailModel p1 = ProductDetailModel(
    brand: "No Brand",
    title: "Blackhead Remover Pin",
    color: "Silver",
    material: "Stainless Steel",
    safety: "safety",
    description: "100% Brand new and high quality",
    durability: "durability");

List<ProductDetailModel> prodDetailList = [p1];
