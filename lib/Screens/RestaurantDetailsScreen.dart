import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  final String name;
  final String img;

  RestaurantDetailsScreen(this.name, this.img);

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  final PageController _pageController = PageController(
    viewportFraction: 1,
  );
  List<String> list = [
    'images/food.png',
    'images/food.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFF26273B),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 240,
              child: PageView.builder(
                controller: _pageController,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1),
                    child: Image.asset(
                      list[index],
                      fit: BoxFit.cover,
                    ),

                  );
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: list.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 15,
                  spacing: 10,
                ),
              ),
            ),

            Container(
              height: 230,
              color: const Color(0xFF2A2C41),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(widget.img),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    // 'Protein Bar',
                    widget.name,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset('images/star.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android,
                        size: 18,
                        color: Color(0xFF646781),
                      ),
                      Text(
                        '00965000000',
                        style:
                            TextStyle(color: Color(0xFF777A91), fontSize: 16),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: Color(0xFF646781),
                      ),
                      Text(
                        'Al Muruj, Riyadh',
                        style:
                            TextStyle(color: Color(0xFF777A91), fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'There are many variations of passages \nof Lorem Ipsum available.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF777A91), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Restaurant Services',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 75,
              width: 380,
              color: Color(0xFF2A2C41),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Weight Loss',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Muscle your way towards confidence.',
                    style: TextStyle(color: Color(0xFF777A91), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              width: 380,
              color: Color(0xFF2A2C41),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Weight Loss',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Muscle your way towards confidence.',
                    style: TextStyle(color: Color(0xFF777A91), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              width: 380,
              color: Color(0xFF2A2C41),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Weight Loss',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Muscle your way towards confidence.',
                    style: TextStyle(color: Color(0xFF777A91), fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 75,
              width: 380,
              color: Color(0xFF2A2C41),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Weight Loss',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Muscle your way towards confidence.',
                    style: TextStyle(color: Color(0xFF777A91), fontSize: 14),
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
