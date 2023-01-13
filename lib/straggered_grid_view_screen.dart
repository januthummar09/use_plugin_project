import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class StraggeredGridViewScreen extends StatefulWidget {
const StraggeredGridViewScreen({ Key? key }) : super(key: key);

  @override
  State<StraggeredGridViewScreen> createState() => _StraggeredGridViewScreenState();
}

class _StraggeredGridViewScreenState extends State<StraggeredGridViewScreen> {
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
            Expanded(
                child: Container(
                  color: Colors.pink,
                  child: MasonryGridView.count(
                    itemCount: 20,
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    itemBuilder: (context, index) {
                      return Tile(
                        index: index,
                        extent: (index % 5 + 1) * 100,
                      );
                    },
                  ),
                ),
              ),

        ],
      ),
    ),);
  }
}



class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.yellow,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}