import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class SliderPackgeScreen extends StatefulWidget {
  const SliderPackgeScreen({Key? key}) : super(key: key);

  @override
  State<SliderPackgeScreen> createState() => _SwitchPackgeScreenState();
}

class _SwitchPackgeScreenState extends State<SliderPackgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SwipeButton.expand(
            thumb: const Icon(
              Icons.double_arrow_rounded,
              color: Colors.white,
            ),
            activeThumbColor: Colors.red,
            activeTrackColor: Colors.grey.shade300,
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped.........1"),
                  backgroundColor: Colors.green,
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
              );
            },
            child: const Text(
              "Swipe to .",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SwipeButton(
            trackPadding: const EdgeInsets.all(6),
            elevationThumb: 2,
            child: const Text(
              "Swipe to ...",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped..........2"),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SwipeButton(
            thumbPadding: const EdgeInsets.all(3),
            thumb: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            elevationThumb: 2,
            elevationTrack: 2,
            child: Text(
              "Swipe to ...".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped.....3"),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SwipeButton(
            borderRadius: BorderRadius.circular(8),
            activeTrackColor: Colors.amber,
            height: 60,
            child: const Text(
              "Swipe to ...",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped......4"),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SwipeButton(
            activeTrackColor: Colors.blue,
            activeThumbColor: Colors.yellow,
            borderRadius: BorderRadius.zero,
            height: 30,
            child: const Text(
              "Swipe to ...",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped.........5"),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SwipeButton(
            width: 200,
            child: const Text(
              "Swipe to ...",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onSwipe: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Swipped.....6"),
                  backgroundColor: Colors.green,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
