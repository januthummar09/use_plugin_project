import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:juxtapose/juxtapose.dart';
import 'package:blur/blur.dart';

class ImagePlugin extends StatefulWidget {
  const ImagePlugin({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePlugin> createState() => _ImagePluginState();
}

class _ImagePluginState extends State<ImagePlugin> with TickerProviderStateMixin{
AnimationController ? animationController;
  double blurValue = 0;
  @override
  void initState() {
    animationController=AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    var theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        children: [
          Carousel(
            activateIndicatorColor: Colors.yellow,
            animationPageCurve: Curves.easeInExpo,
            // widgets
            items: [
              Container(
                  color: Colors.blue,
                  child: const Icon(
                    Icons.add,
                    size: 30,
                  )),
              Container(
                color: Colors.green,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/flutter_logo.png',
                      scale: 3.5,
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Flutter',
                      style: theme.textTheme.headline4,
                    ).frosted(
                      blur: 3,
                      borderRadius: BorderRadius.circular(20),
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      width: 150,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                // color: Colors.yellow,
                child: Image.asset(
                  'assets/images/flutter_black.png',
                  fit: BoxFit.cover,
                ).blurred(
                  colorOpacity: 0.2,
                  borderRadius: BorderRadius.circular(30),
                  blur: 6,
                  overlay: Text(
                    'Flutter',
                    style: theme.textTheme.headline2!
                        .copyWith(color: theme.scaffoldBackgroundColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Carousel(
            activateIndicatorColor: Colors.yellow,

            autoScroll: true,
            // widgets
            items: [
              Container(
                color: Colors.blue,
                child: const Image(
                  image: AssetImage(
                    "assets/images/grey_cat.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                 child: const Image(
                  image: AssetImage(
                    "assets/images/cat2.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.yellow,
                 child: const Image(
                  image: AssetImage(
                    "assets/images/cat.png",
                  ),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 350,
            width: 200,
            child: Juxtapose(
              backgroundColor: const Color(0xFF012747),
              foregroundWidget: Center(
                child: Image.asset(
                  "assets/images/flutter_black.png",
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              backgroundWidget: Center(
                child: Image.asset(
                  "assets/images/flutter_logo.png",
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
