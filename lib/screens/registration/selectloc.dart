import 'package:flutter/material.dart';
import 'package:grocerystore/screens/registration/loginpage.dart';

class Selectloc extends StatefulWidget {
  const Selectloc({Key? key}) : super(key: key);

  @override
  _SelectlocState createState() => _SelectlocState();
}

class _SelectlocState extends State<Selectloc> {
  String _dropDownValue = "Province";
  String _dropDownAreaValue = "Area";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            top: MediaQuery.of(context).size.width * 0.08,
            left: MediaQuery.of(context).size.width * 0.03,
          ),
          Positioned(
            child: const Text(
              "Select Your Location",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            bottom: MediaQuery.of(context).size.width * 1.17,
            left: MediaQuery.of(context).size.width * 0.185,
          ),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.width * 0.6,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage("assets/location.png"),
                ),
              ),
            ),
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.15,
          ),
          Positioned(
            child: const Text(
              "Switch on your location to stay in tune with ",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
            top: MediaQuery.of(context).size.width * 0.95,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          Positioned(
            child: const Text(
              "what's happening in your area",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
            top: MediaQuery.of(context).size.width * 1.02,
            left: MediaQuery.of(context).size.width * 0.22,
          ),
          Positioned(
            child: const Text(
              "Your zone",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
            bottom: MediaQuery.of(context).size.width * 0.9,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          Positioned(
            child: const Text(
              "Your area",
              style: TextStyle(color: Color(0xFF828282), fontSize: 16),
            ),
            bottom: MediaQuery.of(context).size.width * 0.6,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          Positioned(
            child: DropdownButton(
                value: _dropDownValue,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Province" +
                          " " *
                              (MediaQuery.of(context).size.width * 0.14)
                                  .toInt(),
                      style: const TextStyle(
                        color: Color(0xFFB1B1B1),
                      ),
                    ),
                    value: "Province",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Fergana",
                    ),
                    value: "Fergana",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Tashkent",
                    ),
                    value: "Tashkent",
                  ),
                ],
                onChanged: (v) {
                  _dropDownValue = v.toString();
                  setState(() {});
                }),
            bottom: MediaQuery.of(context).size.width * 0.78,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          Positioned(
            child: DropdownButton(
                value: _dropDownAreaValue,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Area" +
                          " " *
                              (MediaQuery.of(context).size.width * 0.15)
                                  .toInt(),
                      style: const TextStyle(
                        color: Color(0xFFB1B1B1),
                      ),
                    ),
                    value: "Area",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Buvayda",
                    ),
                    value: "Buvayda",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Qoqon",
                    ),
                    value: "Qoqon",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Tashkent",
                    ),
                    value: "Tashkent",
                  ),
                  const DropdownMenuItem(
                    child: Text(
                      "Chilonzor",
                    ),
                    value: "Chilonzor",
                  ),
                ],
                onChanged: (v) {
                  _dropDownAreaValue = v.toString();
                  setState(() {});
                }),
            bottom: MediaQuery.of(context).size.width * 0.45,
            left: MediaQuery.of(context).size.width * 0.1,
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
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF53B175)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                onPressed: () {
                  if (_dropDownValue != "Province" &&
                      _dropDownAreaValue != "Area") {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Loginpage(),
                      ),
                    );
                  }
                },
              ),
            ),
            bottom: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
        ],
      ),
    );
  }
}
