import 'package:flutter/material.dart';
import 'SignInScreen.dart';
import 'SignUpScreen.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/back1.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Center(
            child: Image.asset(
              'images/Logo1.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text(AppLocalizations.of(context)!.login),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      minimumSize: Size(300, 60),
                      primary: Color(0xffd04f41),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child:  Text(AppLocalizations.of(context)!.sign_up,),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      minimumSize: Size(300, 60),
                      primary: Color(0xFF26273B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.white))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
