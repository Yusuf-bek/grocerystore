import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';

class Infoproduct extends StatefulWidget {
  int? indexproduct;
  Infoproduct({Key? key, @required this.indexproduct}) : super(key: key);

  @override
  _InfoproductState createState() => _InfoproductState();
}

class _InfoproductState extends State<Infoproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color(0xFFF1EFEF),
                image: DecorationImage(
                  image: AssetImage(
                    exclusiveOffer[widget.indexproduct!],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      infoData[widget.indexproduct]![0],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.bold),
                    ),
                    top: MediaQuery.of(context).size.width * 0.06,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Positioned(
                    child: const Text(
                      "Product details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    top: MediaQuery.of(context).size.width * 0.24,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    top: MediaQuery.of(context).size.width * 0.35,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Positioned(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: MediaQuery.of(context).size.width * 0.18,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        favouriteGroceries.add(
                          [
                            exclusiveOffer[widget.indexproduct!],
                            infoData[widget.indexproduct]![0],
                            infoData[widget.indexproduct]![1],
                            infoData[widget.indexproduct]![2],
                            1
                          ],
                        );
                        setState(() {});
                      },
                    ),
                    top: MediaQuery.of(context).size.width * 0.04,
                    right: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Positioned(
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        onPressed: () {
                          myCartList.add(
                          [
                            exclusiveOffer[widget.indexproduct!],
                            infoData[widget.indexproduct]![0],
                            infoData[widget.indexproduct]![1],
                            infoData[widget.indexproduct]![2],
                            1
                          ],
                        );
                        setState(() {});
                        },
                      ),
                    ),
                    bottom: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.05,
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
