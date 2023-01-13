import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({Key? key}) : super(key: key);

  @override
  State<SwipeScreen> createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  List image = [
    "assets/images/cat.png",
    "assets/images/cat2.png",
    "assets/images/flutter_black.png",
    "assets/images/flutter_logo.png",
    "assets/images/grey_cat.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwipeDeck(
        startIndex: 3,
        emptyIndicator: const Center(
          child: Text("Nothing Here"),
        ),
        cardSpreadInDegrees: 5, // Change the Spread of Background Cards
        onSwipeLeft: () {
          debugPrint("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
        },
        onSwipeRight: () {
          debugPrint("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
        },
        onChange: (index) {
          debugPrint(image[index]);
        },
        widgets: image
            .map(
              (e) => GestureDetector(
                onTap: () {
                  debugPrint(e);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "$e",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
