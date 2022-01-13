import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/registration/secondpage.dart';

class Firstregpage extends StatefulWidget {
  const Firstregpage({Key? key}) : super(key: key);

  @override
  _FirstregpageState createState() => _FirstregpageState();
}

class _FirstregpageState extends State<Firstregpage> {
  String _dropDownValue = "+ ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          mainPart(),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF5383EC),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF5383EC)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "G ",
                      style: TextStyle(fontSize: 35),
                    ),
                    Center(
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            bottom: MediaQuery.of(context).size.width * 0.38,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF4A66AC),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF4A66AC)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      " f",
                      style: TextStyle(fontSize: 35),
                    ),
                    Center(
                      child: Text(
                        "Continue with Facebook",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            bottom: MediaQuery.of(context).size.width * 0.15,
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          Positioned(
            child: const Text(
              "Or connect with social media",
              style: TextStyle(color: Color(0xFF828282), fontSize: 14),
            ),
            bottom: MediaQuery.of(context).size.width * 0.65,
            left: MediaQuery.of(context).size.width * 0.26,
          ),
        ],
      ),
    );
  }

  Container mainPart() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/secondpage.jpg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Text(
                "Get your groceries with nectar",
                style: TextStyle(
                    fontSize: 26, inherit: false, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton(
              value: _dropDownValue,
              items: [
                const DropdownMenuItem(
                  child: Text(
                      "  Choose your country code                            "),
                  value: "+ ",
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.09,
                        width: MediaQuery.of(context).size.width * 0.09,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage("assets/flags/uzb.png"))),
                      ),
                      const Text(
                          "  +998                                                        "),
                    ],
                  ),
                  value: "   +998 ",
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.09,
                        width: MediaQuery.of(context).size.width * 0.09,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage("assets/flags/usa.png"),
                          ),
                        ),
                      ),
                      const Text(
                          "  +1                                                           "),
                    ],
                  ),
                  value: "   +1 ",
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.09,
                        width: MediaQuery.of(context).size.width * 0.09,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage("assets/flags/uk.png"),
                          ),
                        ),
                      ),
                      const Text(
                          "  +44                                                          "),
                    ],
                  ),
                  value: "   +44 ",
                ),
              ],
              onChanged: (v) {
                setState(() {
                  _dropDownValue = v.toString();
                  if (_dropDownValue != "+ ") {
                    Future.delayed(
                      const Duration(seconds: 3),
                    ).then((value) {
                      countryCode = _dropDownValue;
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const Secondregpage(),
                        ),
                      );
                    });
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
