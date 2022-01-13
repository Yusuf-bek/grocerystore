import 'package:flutter/material.dart';
import 'package:grocerystore/screens/registration/selectloc.dart';

class Thirdregpage extends StatefulWidget {
  const Thirdregpage({Key? key}) : super(key: key);

  @override
  _ThirdregpageState createState() => _ThirdregpageState();
}

class _ThirdregpageState extends State<Thirdregpage> {
  final TextEditingController _numberController = TextEditingController();

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
                      "Enter your 4 digit code",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    left: 35,
                  ),
                  Positioned(
                    child: Text(
                      "Code",
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
                          obscureText: true,
                          controller: _numberController,
                          cursorColor: const Color(0xFF7C7C7C),
                          cursorHeight:
                              MediaQuery.of(context).size.width * 0.07,
                          cursorWidth:
                              MediaQuery.of(context).size.width * 0.003,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: "_ _ _ _",
                            labelStyle: TextStyle(
                              color: Color(0xFF7C7C7C),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF7C7C7C),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF7C7C7C),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend code",
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 18.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                child: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  if (_numberController.text == '1234') {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Selectloc(),
                      ),
                    );
                  }
                },
                backgroundColor: const Color(0xFF53B175),
              ),
            ),
          ],
        ));
  }
}
