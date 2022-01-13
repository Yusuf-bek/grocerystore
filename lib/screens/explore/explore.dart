import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/cart/cart.dart';
import 'package:grocerystore/screens/favourites/favourites.dart';
import 'package:grocerystore/screens/profile/profile.dart';
import 'package:grocerystore/screens/shop/shoppage.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find Products",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
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
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.695,
            color: Colors.white,
            child: GridView.builder(
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return _ContainertoListview(index);
                }),
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
                    onPressed: () {},
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
            top: MediaQuery.of(context).size.width * 0.02,
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
            bottom: MediaQuery.of(context).size.width * 0.04,
            left: MediaQuery.of(context).size.width * 0.07,
          ),
        ],
      ),
    );
  }
}
