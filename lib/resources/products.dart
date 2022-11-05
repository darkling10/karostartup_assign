class Product {
  final int id, price;
  final String title, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

// This is the current list of products
//I as not able to find API so I used static values
//But the App is designed in such a way that we can use API by just changing this file rather than whole code
List<Product> products = [
  Product(
    id: 1,
    price: 45,
    title: "White woodem Arm Chair",
    image: "assets/images/chair_1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 2,
    price: 89,
    title: "Royal Arm Chair",
    image: "assets/images/chair_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Olive Wooden Chair",
    image: "assets/images/item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 39,
    title: "Black Wooden Chair",
    image: "assets/images/item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
