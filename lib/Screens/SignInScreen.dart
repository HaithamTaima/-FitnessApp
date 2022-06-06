import 'package:flutter/material.dart';
import '../Widget/Button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      appBar: AppBar(
        backgroundColor: Color(0xFF26273B),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "emaill",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xFF646781)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFF646781))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Color(0xFFDF4C3B)))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xFF646781)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFF646781))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Color(0xFFDF4C3B)))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Button("Login"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgot password ?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
