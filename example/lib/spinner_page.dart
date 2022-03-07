import 'package:flutter/material.dart';
import 'package:flutter_spinwheel/flutter_spinwheel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class KhaltiSpinnerPage extends StatefulWidget {
  const KhaltiSpinnerPage({Key? key}) : super(key: key);

  @override
  State<KhaltiSpinnerPage> createState() => _KhaltiSpinnerPageState();
}

class _KhaltiSpinnerPageState extends State<KhaltiSpinnerPage> {
  late List<String> carouselNames;
  late List<NamedImage> imgPack;
  late CarouselSlider carousel;
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();

    carouselNames = ['dog', 'cat', 'budgie', 'goldfish'];

    imgPack = [
      NamedImage(
        path: 'assets/images/dog.jpg',
        name: carouselNames[0],
        offsetX: 1.2,
      ),
      NamedImage(
        path: 'assets/images/cat.jpg',
        name: carouselNames[1],
        offsetY: 1.7,
      ),
      NamedImage(
        path: 'assets/images/budgie.jpg',
        name: carouselNames[2],
      ),
      NamedImage(
        path: 'assets/images/goldfish.jpg',
        name: carouselNames[3],
        offsetX: 1.2,
      ),
    ];

    // For Image example
    carousel = CarouselSlider(
      items: imgPack.map((img) {
        return Image.asset(img.path);
      }).toList(),
      carouselController: _carouselController,
      options: CarouselOptions(
        viewportFraction: 0.25,
        height: 60,
        aspectRatio: 1,
        enableInfiniteScroll: true,
        // enlargeCenterPage: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: carousel),
        Flexible(
          child: FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 1.8,
            widthFactor: 1.2,
            child: Spinwheel(
              size: MediaQuery.of(context).size.width + 50,
              imageItems: imgPack,
              items: [],
              select: 1,
              onChanged: (val) {
                _carouselController.animateToPage(
                  carouselNames.indexOf(val),
                  // duration: Duration(seconds: 5),
                  curve: Curves.linear,
                );
              },
              // rotationDuration: 250,
              // // autoPlay: true,
              // longPressToPauseAutoplay: true,
              hideOthers: false,
              shouldHighlight: false,
              // shouldDrawDividers: true,
              // shouldDrawBorder: false,
              shouldDrawCenterPiece: false,
              // duration: Duration(seconds: 5),
              autoPlay: true,
              autoPlayDuration: Duration(seconds: 5),
            ),
          ),
        ),
      ],
    );
  }
}
