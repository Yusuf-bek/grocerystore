import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/cart/cart.dart';
import 'package:grocerystore/screens/explore/explore.dart';
import 'package:grocerystore/screens/profile/profile.dart';
import 'package:grocerystore/screens/shop/shoppage.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Favourites",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.67,
            child: ListView.builder(
                itemCount: favouriteGroceries.length != null
                    ? favouriteGroceries.length
                    : 0,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Stack(
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(favouriteGroceries[index][0]),
                              backgroundColor: Colors.transparent,
                              radius: MediaQuery.of(context).size.width * 0.15,
                            ),
                            top: MediaQuery.of(context).size.width * 0.04,
                            left: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Positioned(
                            child: Text(
                              favouriteGroceries[index][1],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                            top: MediaQuery.of(context).size.width * 0.08,
                            left: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Positioned(
                            child: Text(
                              favouriteGroceries[index][2],
                              style: const TextStyle(
                                  fontSize: 18, color: Color(0xFF181725)),
                            ),
                            top: MediaQuery.of(context).size.width * 0.14,
                            left: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Positioned(
                            child: Container(
                              color: Colors.transparent,
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        if (myCartList[index][4] > 1) {
                                          myCartList[index][4] -= 1;
                                        }
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.remove),
                                    ),
                                    Text(
                                      favouriteGroceries[index][4].toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        favouriteGroceries[index][4] += 1;
                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            top: MediaQuery.of(context).size.width * 0.2,
                            left: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Positioned(
                            child: IconButton(
                              icon: const Icon(Icons.cancel_outlined),
                              onPressed: () {
                                favouriteGroceries.removeAt(index);
                                setState(() {});
                              },
                            ),
                            right: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Positioned(
                            child: Text(
                              "\$ ${favouriteGroceries[index][3] * favouriteGroceries[index][4]}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFF181725),
                              ),
                            ),
                            bottom: MediaQuery.of(context).size.width * 0.04,
                            right: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.width * 0.05),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF53B175),
              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF53B175)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Add all to Cart",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  onPressed: () {
                    myCartList.addAll(favouriteGroceries);
                    sumReturner();
                    setState(() {});
                  }),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.18,
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Profilepage(),
                        ),
                      );
                    },
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
