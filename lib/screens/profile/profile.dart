import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/cart/cart.dart';
import 'package:grocerystore/screens/explore/explore.dart';
import 'package:grocerystore/screens/favourites/favourites.dart';
import 'package:grocerystore/screens/shop/shoppage.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.4,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.1,
                    backgroundImage: const AssetImage("assets/brofour.jpg"),
                  ),
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.width * 0.17,
                ),
                Positioned(
                  child: const Text(
                    "Ogabek Sherakhmatov",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  top: MediaQuery.of(context).size.width * 0.2,
                  left: MediaQuery.of(context).size.width * 0.3,
                ),
                Positioned(
                  child: IconButton(
                    color: Colors.green,
                    icon: const Icon(
                      Icons.edit,
                    ),
                    onPressed: () {},
                  ),
                  top: MediaQuery.of(context).size.width * 0.17,
                  right: MediaQuery.of(context).size.width * 0.06,
                ),
                Positioned(
                  child: const Text(
                    "ogabeksherakhmatov@gmail.com",
                    style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
                  ),
                  top: MediaQuery.of(context).size.width * 0.27,
                  left: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.725,
            color: Colors.white,
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        iconsProfile[index][1],
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      leading: Icon(iconsProfile[index][0]),
                    ),
                  );
                }),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Shoppage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Explore(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Cartpage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.card_travel,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Favourites(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
