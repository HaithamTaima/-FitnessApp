import 'package:flutter/material.dart';
import '../Widget/Button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF26273B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          // margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Abdulhamid Dawas",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "abdawas@gmail.com",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisable,
                decoration: InputDecoration(
                    suffix: IconButton(
                      color: Color(0xFF646781),
                      iconSize: 20,
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: Icon(
                        isVisable ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    hintText: "**********",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Color(0xFF646781),
                    ),
                    hintText: "Country",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: "City",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Color(0xFF646781)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFF646781))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Color(0xFFDF4C3B)))),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "By creating account, you agree to Fitclub",
                      style: TextStyle(fontSize: 16, color: Color(0xFF646781))),
                  TextSpan(
                      text: " Privacy Policy",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFEC6454),
                      )),
                  TextSpan(
                      text: " and",
                      style: TextStyle(fontSize: 16, color: Color(0xFF646781))),
                  TextSpan(
                      text: " Terms of Use",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFEC6454),
                      )),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Button("Sign up"),
            ],
          ),
        ),
      ),
    );
  }
}
