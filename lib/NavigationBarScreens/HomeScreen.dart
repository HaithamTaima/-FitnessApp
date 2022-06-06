import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_gym/Screens/SubscriptionsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(
    viewportFraction: 0.65,
    initialPage: 1,
  );
  late Timer _timer;

  @override
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      body: Stack(
        children: [
          Image.asset(
            "images/Group.png",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 25,
                  bottom: 2,
                ),
                child: Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tuesday, 15 June 2018',
                            style: TextStyle(
                              color: Color(0xffF4BAB4),
                              fontSize: 14,
                            ),
                          ),
                        ]),
                    Spacer(),
                    Text(
                      '36º',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CarouselSlider(
                    items: [
                      Container(
                          decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('images/Card.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                    ],
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 11,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 15, top: 370),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "01:34",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffffffff)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "hr",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "8793",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffffffff)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "cal",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SubscriptionsScreen()),
                        );
                      },
                      child: Container(
                        width: 180,
                        height: 100,
                        padding: const EdgeInsets.only(right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: const Color(0xFF2E3046),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('images/Gyms.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "GYMS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 100,
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: const Color(0xFF2E3046),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/Trainers.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "TRAINERS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 180,
                      height: 100,
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: const Color(0xFF2E3046),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/Heath Restaurant.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "HEATH RESTAURANT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 100,
                      padding: const EdgeInsets.only(right: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: const Color(0xFF2E3046),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/shop.png'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "E-COMMERCE",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
