import 'package:flutter/material.dart';
import 'package:grocerystore/screens/backend/backend.dart';
import 'package:grocerystore/screens/registration/signup.dart';
import 'package:grocerystore/screens/shop/shoppage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState>? _formkey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState>? _formpasskey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.48,
              color: Colors.transparent,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  top: MediaQuery.of(context).size.width * 0.18,
                  left: MediaQuery.of(context).size.width * 0.35,
                ),
                Positioned(
                  child: const Text(
                    "Loging",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  top: MediaQuery.of(context).size.width * 0.65,
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                Positioned(
                  child: const Text(
                    "Enter your emails and password",
                    style: TextStyle(color: Color(0xFF828282), fontSize: 16),
                  ),
                  top: MediaQuery.of(context).size.width * 0.75,
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                Positioned(
                  child: const Text(
                    "Email",
                    style: TextStyle(color: Color(0xFF828282), fontSize: 16),
                  ),
                  top: MediaQuery.of(context).size.width * 0.94,
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1),
              child: Form(
                key: _formkey,
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: const Color(0xFF7C7C7C),
                  cursorHeight: MediaQuery.of(context).size.width * 0.07,
                  cursorWidth: MediaQuery.of(context).size.width * 0.003,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
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
                  validator: (v) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(v!)) {
                      return "Enter email";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.1),
              child: const Text(
                "Password",
                style: TextStyle(color: Color(0xFF828282), fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1),
              child: Form(
                key: _formpasskey,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  cursorColor: const Color(0xFF7C7C7C),
                  cursorHeight: MediaQuery.of(context).size.width * 0.07,
                  cursorWidth: MediaQuery.of(context).size.width * 0.003,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
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
                  validator: (v) {
                    if (v!.length < 4 ||
                        _emailController.text != users[0][0] ||
                        _passwordController.text != users[0][1]) {
                      return "password should be longer or email/password wrong";
                    }
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.7,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Positioned(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style:
                            TextStyle(color: Color(0xFF181725), fontSize: 16),
                      ),
                    ),
                    right: MediaQuery.of(context).size.width * 0.078,
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
                            "Submit",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        onPressed: () {
                          if (_formkey!.currentState!.validate()) {
                            if (_formpasskey!.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Shoppage(),
                                ),
                              );
                            }
                          }
                        },
                      ),
                    ),
                    bottom: MediaQuery.of(context).size.width * 0.35,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Positioned(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Signuppage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign up",
                        style:
                            TextStyle(color: Color(0xFF53B175), fontSize: 16),
                      ),
                    ),
                    right: MediaQuery.of(context).size.width * 0.2,
                    bottom: MediaQuery.of(context).size.width * 0.225,
                  ),
                  Positioned(
                    child: const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color(0xFF181725), fontSize: 16),
                    ),
                    left: MediaQuery.of(context).size.width * 0.18,
                    bottom: MediaQuery.of(context).size.width * 0.26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
