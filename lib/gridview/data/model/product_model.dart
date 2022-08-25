class ProductModel {
  final String price, title, imgUrl;
  final String? moq;

  ProductModel(
      {required this.price,
      required this.title,
      required this.imgUrl,
      this.moq});
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
ProductModel item7 = ProductModel(
    price: "\$25",
    title: "Go Pro Hero 9 Black",
    imgUrl: "https://www.pngmart.com/files/22/Gopro-Camera-PNG-Photos.png",
    moq: "12 pieces");
ProductModel item8 = ProductModel(
    price: "\$3.90",
    title: "Mavic Pro Dji Osmo Drone",
    imgUrl: "https://www.pngmart.com/files/6/Drone-Transparent-Images-PNG.png");
ProductModel item9 = ProductModel(
    price: "\$15.75",
    title: "32 inch Sony Monitor",
    imgUrl: "https://www.pngmart.com/files/7/Screen-PNG-File.png");
ProductModel item10 = ProductModel(
    price: "\$12.25",
    title: "Toy Car",
    imgUrl:
        "https://www.pngmart.com/files/16/Portable-Laptop-Top-View-Transparent-Background.png");
ProductModel item11 = ProductModel(
    price: "\$5.60",
    title: "Full Sleve Shirt",
    imgUrl: "https://www.pngmart.com/files/7/USB-Pen-Drive-PNG-Picture.png");
ProductModel item12 = ProductModel(
    price: "\$25",
    title: "Mans Bag",
    imgUrl:
        "https://www.pngmart.com/files/15/Black-Microwave-Oven-Havells-PNG.png");
ProductModel item13 = ProductModel(
    price: "\$25",
    title: "Mans Bag",
    imgUrl: "https://www.pngmart.com/files/15/Apple-iPhone-12-PNG-Image.png");

List<ProductModel> products = [
  item1,
  item2,
  item3,
  item4,
  item5,
  item6,
  item7,
  item8,
  item9,
  item10,
  item11,
  item12,
  item13,
];

List<ProductModel> carasouelList = [
  item6,
  item7,
  item8,
  item9,
  item10,
  item11,
];

String demoImg = "https://www.pngmart.com/files/21/iPhone-13-Pro-PNG-Image.png";
