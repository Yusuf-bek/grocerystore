import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/cart/cart.dart';
import 'package:grocerystore/screens/explore/explore.dart';
import 'package:grocerystore/screens/favourites/favourites.dart';
import 'package:grocerystore/screens/profile/profile.dart';
import 'package:grocerystore/screens/shop/infopage.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({Key? key}) : super(key: key);

  @override
  _ShoppageState createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.45,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      labelText: "Search",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.cyan,
              image: const DecorationImage(
                  image: AssetImage("assets/shopbanner.png"), fit: BoxFit.fill),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.542,
            width: double.infinity,
            color: Colors.white,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      betweenContainer(shopPageOffers[index]),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width * 0.7,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, littleindex) {
                              return index == 2
                                  ? _ContainertoListview(littleindex)
                                  : ContainertoListview(littleindex);
                            },
                            itemCount: 6),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.2,
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
                    onPressed: () {},
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

  Container betweenContainer(String textfor) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      width: double.infinity,
      height: MediaQuery.of(context).size.width * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textfor,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.07),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              )),
        ],
      ),
    );
  }

  Container ContainertoListview(int index) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => Infoproduct(indexproduct: index,),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.34,
                height: MediaQuery.of(context).size.width * 0.34,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(exclusiveOffer[index]),
                  ),
                ),
              ),
            ),
            top: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.055,
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                color: const Color(0xFF53B175),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.02),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  myCartList.add([
                    exclusiveOffer[index],
                    infoData[index]![0],
                    infoData[index]![1],
                    infoData[index]![2],
                    1
                  ]);
                  setState(() {});
                },
              ),
            ),
            bottom: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.17,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Text(
              infoData[index]![0],
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFF181725,
                  ),
                  fontSize: 16),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.12,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Text(
              infoData[index]![1],
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFF7C7C7C,
                  ),
                  fontSize: 16),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.03,
            child: Text(
              "\$ ${infoData[index]![2]}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFF181725,
                  ),
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Container _ContainertoListview(int index) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.black),
        borderRadius: BorderRadius.circular(20),
        color: GroceryColors[index],
      ),
      child: Stack(
        children: [
          Positioned(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.width * 0.35,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(imageCatAdds[index]),
                  ),
                ),
              ),
            ),
            top: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.1,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  imageCatNamed[index],
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            bottom: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.07,
          ),
        ],
      ),
    );
  }
}
