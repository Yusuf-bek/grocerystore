import 'package:flutter/material.dart';

String? countryCode = '   +998 ';

Map<String, String>? flags = {
  "   +998 ": "assets/flags/uzb.png",
  "   +1 ": "assets/flags/usa.png",
  "   +44 ": "assets/flags/uk.png",
};

List<List<String>> users = [
  ["gmail@gmail.com", "12345678", "ogabek"],
  []
];

List<String> shopPageOffers = [
  "Exclusive offer",
  "Best selling",
  "Groceries",
];

List<String> imageCatAdds = [
  "assets/bakery.png",
  "assets/beverages.png",
  "assets/dairy.png",
  "assets/fruit.png",
  "assets/meat.png",
  "assets/oil.png",
];

List<String> imageCatNamed = [
  "Bakery",
  "Beverages",
  "Dairy",
  "Fruit",
  "Meat",
  "Oil",
];

List<String> exclusiveOffer = [
  "assets/grocery_images/apple.png",
  "assets/grocery_images/banana.png",
  "assets/grocery_images/beef.png",
  "assets/grocery_images/chicken.png",
  "assets/grocery_images/ginger.png",
  "assets/grocery_images/pepper.png",
];

Map<int, List> infoData = {
  0: ["Apple", "1kg per", 0.8],
  1: ["Banana", "1kg per", 0.6],
  2: ["Beef", "1kg per", 5.0],
  3: ["Chicken", "1kg per", 2],
  4: ["Ginger", "1kg per", 1],
  5: ["Pepper", "1kg per", 1.8],
};

//? Color Groceries
List<Color> GroceryColors = [
  Colors.red.withOpacity(0.2),
  Colors.green.withOpacity(0.2),
  Colors.brown.withOpacity(0.2),
  Colors.blue.withOpacity(0.2),
  Colors.pink.withOpacity(0.2),
  Colors.cyan.withOpacity(0.2),
];

// ! Profile

List<List> iconsProfile = [
  [Icons.shop, "Order"],
  [Icons.details, "My details"],
  [Icons.location_city, "Delivary Address"],
  [Icons.payment, "Payment Methods"],
  [Icons.card_giftcard, "Promo Card"],
  [Icons.notifications, "Notifications"],
  [Icons.help, "Help"],
  [Icons.info, "About"],
];

// ? Cart

List<List> myCartList = [
  ["assets/grocery_images/apple.png", "Apple", "1kg per", 0.8, 1],
];

int sumReturner() {
  int a = myCartList.length;
  double sumofAll = 0;

  for (int i = 0; i < a; i++) {
    sumofAll += (myCartList[i][3] * myCartList[i][4]);
  }

  return sumofAll.toInt();
}

List<List> favouriteGroceries = [
  ["assets/grocery_images/apple.png", "Apple", "1kg per", 0.8, 1],
];
