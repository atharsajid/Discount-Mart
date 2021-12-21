import 'package:carousel_slider/carousel_slider.dart';
import 'package:discount_mart/Screens/Home%20Screen/Home/controller.dart';
import 'package:discount_mart/Screens/Login/Login%20Screen/controller.dart';
import 'package:discount_mart/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final googlecontroller = Get.find<GoogleSignInController>();

  int activeindex = 0;

  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/1.png",
              color: primary,
              height: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Text("Discount-Mart"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.blue,
                      // image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 10,
                      //     spreadRadius: 8,
                      //     color: Colors.black.withOpacity(0.1),
                      //   ),
                      // ],
                    ),
                  );
                },
                carouselController: controller,
                options: CarouselOptions(
                    viewportFraction: 1,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeindex = index;
                      });
                    }
                    // enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
              ),
              Positioned(
                left: 15,
                top: 75,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: primary,
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 75,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: primary,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedSmoothIndicator(
              onDotClicked: currentpage,
              activeIndex: activeindex,
              count: 5,
              effect: WormEffect(
                activeDotColor: primary,
                dotColor: Colors.grey.withOpacity(0.5),
                dotWidth: 20,
                dotHeight: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void currentpage(int index) => controller.animateToPage(index);
}

// Text(googlecontroller.googleaccount.value?.email ?? "")
