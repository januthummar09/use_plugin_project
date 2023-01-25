import 'package:flutter/material.dart';

class PageviewBuilderScreen extends StatefulWidget {
  const PageviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<PageviewBuilderScreen> createState() => _PageviewBuilderScreenState();
}

class _PageviewBuilderScreenState extends State<PageviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Text("data"),
        ],
      ),
    );
  }
}
