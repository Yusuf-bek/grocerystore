import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/registration/thirdpage.dart';

class Secondregpage extends StatefulWidget {
  const Secondregpage({Key? key}) : super(key: key);

  @override
  _SecondregpageState createState() => _SecondregpageState();
}

class _SecondregpageState extends State<Secondregpage> {
  TextEditingController _numberController =
      TextEditingController(text: countryCode);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade50,
                    Colors.green.shade50,
                    Colors.red.shade50,
                    Colors.green.shade50,
                  ],
                ),
              ),
              child: Stack(
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
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Stack(children: const [
                Positioned(
                  child: Text(
                    "Enter your mobile number",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  left: 35,
                ),
                Positioned(
                  child: Text(
                    "Mobile number",
                    style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 16),
                  ),
                  left: 35,
                  top: 60,
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
                child: Form(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.05,
                  left: MediaQuery.of(context).size.width * 0.099,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _numberController,
                      cursorColor: const Color(0xFF7C7C7C),
                      cursorHeight: MediaQuery.of(context).size.width * 0.07,
                      cursorWidth: MediaQuery.of(context).size.width * 0.003,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          width: MediaQuery.of(context).size.width * 0.02,
                          height: MediaQuery.of(context).size.width * 0.02,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage(flags![countryCode]!),
                            ),
                          ),
                        ),
                        labelStyle: const TextStyle(
                          color: Color(0xFF7C7C7C),
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF7C7C7C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          child: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Thirdregpage(),
              ),
            );
          },
          backgroundColor: const Color(0xFF53B175),
        ),
      ),
    );
  }
}
