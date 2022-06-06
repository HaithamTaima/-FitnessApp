import 'package:flutter/material.dart';
import '../BottomNavigationBar.dart';

class Button extends StatelessWidget {
  final String text;

  Button(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NavBarScreen()),
        );
      },
      child: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffDF4C3B), Color(0xffEC6454)],
            ),
            borderRadius: BorderRadius.circular(6)),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
