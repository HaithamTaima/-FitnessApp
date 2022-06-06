import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'NavigationBarScreens//HomeScreen.dart';
import 'NavigationBarScreens/MessagesScreen.dart';
import 'NavigationBarScreens/SettingScreen.dart';
import 'models/ModelAppBar.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';


class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    final List<ModelAppBar> _bnScreen = <ModelAppBar>[
      ModelAppBar(
        widget: const HomeScreen(),
        iconCenter: Image.asset('images/logosm.png', width: 60),
        icon: Image.asset('images/Right Icon1.png'),
      ),
      ModelAppBar(title:AppLocalizations.of(context)!.settings, widget: SettingScreen(),),
      ModelAppBar(title: AppLocalizations.of(context)!.massages, widget: MessagesScreen(),),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      appBar: PreferredSize(

        preferredSize: const Size.fromHeight(65.0),
        child: Container(

          height: 70 + MediaQuery.of(context).padding.top,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffea4a37), Color(0xffea604e)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Row(
                  mainAxisAlignment: _bnScreen[_currentIndex].iconCenter == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    if (_bnScreen[_currentIndex].iconCenter != null)
                      const SizedBox(),
                    if (_bnScreen[_currentIndex].iconCenter == null)
                      Text(
                        _bnScreen[_currentIndex].title!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    if (_bnScreen[_currentIndex].iconCenter != null)
                      _bnScreen[_currentIndex].iconCenter!,
                    if (_bnScreen[_currentIndex].icon != null)
                      _bnScreen[_currentIndex].icon!,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),





      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xFF26273B),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 0
                      ? "images/Page 2.svg" //if
                      : "images/Page 1.svg")),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 2
                      ? "images/Messages 2.svg" //if
                      : "images/Messages 1.svg")),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: SvgPicture.asset(_currentIndex == 1
                      ? "images/Settings1.svg" //if
                      : "images/Settings2.svg")),
            ],
          ),
        ),
      ),
    );
  }
}
