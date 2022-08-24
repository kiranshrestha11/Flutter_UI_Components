class ProductModel {
  final String price, title, imgUrl;

  ProductModel({
    required this.price,
    required this.title,
    required this.imgUrl,
  });
}

ProductModel item1 = ProductModel(
    price: "\$25",
    title: "Nike Air",
    imgUrl: "https://www.pngmart.com/files/1/Nike-Shoes-Transparent-PNG.png");
ProductModel item2 = ProductModel(
    price: "\$3.90",
    title: "Black Tshirt",
    imgUrl:
        "https://www.pngmart.com/files/22/Crew-Neck-T-Shirt-PNG-Clipart.png");
ProductModel item3 = ProductModel(
    price: "\$15.75",
    title: "Ladies Purse",
    imgUrl:
        "https://www.pngmart.com/files/22/High-Fashion-Bag-PNG-Picture.png");
ProductModel item4 = ProductModel(
    price: "\$12.25",
    title: "Toy Car",
    imgUrl: "https://www.pngmart.com/files/22/Mclaren-Mercedes-PNG-Photo.png");
ProductModel item5 = ProductModel(
    price: "\$5.60",
    title: "Full Sleve Shirt",
    imgUrl:
        "https://www.pngmart.com/files/22/Raglan-Sleeve-T-Shirt-PNG-Photo.png");
ProductModel item6 = ProductModel(
    price: "\$25",
    title: "Mans Bag",
    imgUrl: "https://www.pngmart.com/files/22/Canteen-Bag-PNG-Photos.png");

List<ProductModel> products = [item1, item2, item3, item4, item5, item6];

String demoImg = "https://www.pngmart.com/files/21/iPhone-13-Pro-PNG-Image.png";
