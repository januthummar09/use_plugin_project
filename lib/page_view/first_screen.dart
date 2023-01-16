import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  PageController pageController = PageController();
  dynamic currentPageValue = 0;

  List pageItem = ["index 1", "index 2", "index 3"];
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: PageView(
        controller: pageController,
        children: const [
          Center(
            child: Text(
              "page 1",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "page 2",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "page 3",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      // body: Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Center(child: Text("${pageItem[index]}"));
      //   },
      //   itemCount: pageItem.length,
      //   viewportFraction: 0.8,
      //   scale: 0.9,
      //   autoplay: true,
      // ),
      // body: Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Center(child: Text("${pageItem[index]}"));
      //   },
      //   itemCount: pageItem.length,
      //   itemWidth: 300.0,
      //   layout: SwiperLayout.STACK,
      // ),
      // body: Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Center(child: Text("${pageItem[index]}"));
      //   },
      //   itemCount: pageItem.length,
      //   itemWidth: 300.0,
      //   itemHeight: 400.0,
      //   layout: SwiperLayout.TINDER,
      // ),
      // body: Swiper(
      //   layout: SwiperLayout.CUSTOM,
      //   customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
      //     ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
      //     ..addTranslate(
      //         [Offset(-370.0, -40.0), Offset(0.0, 0.0), Offset(370.0, -40.0)]),
      //   itemWidth: 300.0,
      //   itemHeight: 200.0,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.grey,
      //       child: Center(
      //         child: Text("$index"),
      //       ),
      //     );
      //   },
      //   itemCount: 10,
      // ),
    );
  }
}
