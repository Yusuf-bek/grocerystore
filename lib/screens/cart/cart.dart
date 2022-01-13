import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/explore/explore.dart';
import 'package:grocerystore/screens/favourites/favourites.dart';
import 'package:grocerystore/screens/profile/profile.dart';
import 'package:grocerystore/screens/shop/shoppage.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Cart",
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
                itemCount: myCartList.length != null ? myCartList.length : 0,
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
                              backgroundImage: AssetImage(myCartList[index][0]),
                              backgroundColor: Colors.transparent,
                              radius: MediaQuery.of(context).size.width * 0.15,
                            ),
                            top: MediaQuery.of(context).size.width * 0.04,
                            left: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Positioned(
                            child: Text(
                              myCartList[index][1],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black),
                            ),
                            top: MediaQuery.of(context).size.width * 0.08,
                            left: MediaQuery.of(context).size.width * 0.4,
                          ),
                          Positioned(
                            child: Text(
                              myCartList[index][2],
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
                                      myCartList[index][4].toString(),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        myCartList[index][4] += 1;
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
                                myCartList.removeAt(index);
                                setState(() {});
                              },
                            ),
                            right: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Positioned(
                            child: Text(
                              "\$ ${myCartList[index][3] * myCartList[index][4]}",
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
                  child: Stack(
                    children: [
                      const Center(
                        child: Text(
                          "Go to Checkout",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                                colors: [Colors.red, Colors.blue]),
                          ),
                          child: Center(
                            child: Text("\$ ${sumReturner()}"),
                          ),
                        ),
                        right: MediaQuery.of(context).size.width * 0.01,
                        top: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                  ),
                  onPressed: () {}),
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
                    onPressed: () {},
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
