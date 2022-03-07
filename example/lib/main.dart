import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/khalti_spinner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinwheel/flutter_spinwheel.dart';

List<Widget> getAppBarActions(BuildContext context) {
  return [
    // ElevatedButton(
    //   child: Icon(
    //     Icons.device_unknown,
    //     color: Colors.white,
    //   ),
    //   onPressed: () {
    //     Navigator.pushReplacementNamed(context, '/sample');
    //   },
    // ),
    // ElevatedButton(
    //   child: Icon(
    //     Icons.insert_emoticon,
    //     color: Colors.white,
    //   ),
    //   onPressed: () {
    //     Navigator.pushReplacementNamed(context, '/emoji');
    //   },
    // ),
    ElevatedButton(
      child: Icon(
        Icons.image,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/image');
      },
    ),
  ];
}

void main() => runApp(SpinwheelDemo());

class SpinwheelDemo extends StatefulWidget {
  @override
  _SpinwheelDemoState createState() => _SpinwheelDemoState();
}

class _SpinwheelDemoState extends State<SpinwheelDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spinwheel Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MainSpinnerPage(),
      // initialRoute: '/image',
      // routes: {
      //   // '/sample': (context) => SpinwheelSampleApp(),
      //   // '/emoji': (context) => SpinwheelEmojiDemo(),
      //   '/image': (context) => SpinwheelImageDemo()
      // },
    );
  }
}

// class SpinwheelSampleApp extends StatefulWidget {
//   @override
//   _SpinwheelSampleAppState createState() => _SpinwheelSampleAppState();
// }
//
// class _SpinwheelSampleAppState extends State<SpinwheelSampleApp> {
//   late final List<String> questions;
//   late final List<List<dynamic>> choices;
//   late final List<String> answers;
//   int select = 0;
//
//   // String currentText;
//
//   @override
//   void initState() {
//     super.initState();
//     questions = [
//       'Your first programming language?',
//       'Did you own any pets?',
//       'Choose any one vehicle you own from below',
//     ];
//     choices = [
//       ['Dart', 'C', 'C++', 'Java', 'Python', 'JS', 'TS', '😠'],
//       ['Yes', 'No'],
//       [
//         NamedImage(
//           path: 'assets/images/car.jpg',
//           name: 'car',
//         ),
//         NamedImage(
//           path: 'assets/images/bike.jpg',
//           name: 'bike',
//         ),
//         NamedImage(
//           path: 'assets/images/other.jpg',
//           name: 'other',
//         ),
//       ]
//     ];
//     select = 0;
//     answers = ['', '', ''];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Center(
//             child: Text('Sample'),
//           ),
//           actions: getAppBarActions(context)),
//       body: Scrollbar(
//         child: ListView.builder(
//             itemCount: 3,
//             itemBuilder: (context, index) => Container(
//                   margin: EdgeInsets.all(20.0),
//                   height: MediaQuery.of(context).size.height / 2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       Text(questions[index]),
//                       Text(answers[index] == '😠' ? '${answers[index]} None of these' : answers[index]),
//                       Spinwheel(
//                         items: choices[index][0] is String ? choices[index].cast<String>() : [],
//                         imageItems: choices[index][0] is NamedImage ? choices[index].cast<NamedImage>() : [],
//                         select: select,
//                         autoPlay: false,
//                         size: 250,
//                         hideOthers: false,
//                         shouldDrawBorder: false,
//                         onChanged: (val) {
//                           if (this.mounted)
//                             setState(() {
//                               answers[index] = val;
//                             });
//                         },
//                       )
//                     ],
//                   ),
//                 )),
//       ),
//     );
//   }
// }
//
// class SpinwheelEmojiDemo extends StatefulWidget {
//   @override
//   _SpinwheelEmojiDemoState createState() => _SpinwheelEmojiDemoState();
// }
//
// class _SpinwheelEmojiDemoState extends State<SpinwheelEmojiDemo> {
//   List<String> items = ['🏘', '🚓', '🚛', '🏍', '🎉'];
//   int select = 2;
//   late String currentText;
//
//   @override
//   void initState() {
//     super.initState();
//     // items = ['🏘', '🚓', '🚛', '🏍', '🎉'];
//     // select = 2;
//     currentText = items[select];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Center(
//             child: Text('Emoji'),
//           ),
//           actions: getAppBarActions(context)),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Center(
//             child: Text(
//               currentText,
//               style: TextStyle(fontSize: 100.0),
//             ),
//           ),
//           Spinwheel(
//             items: items,
//             imageItems: [],
//             onChanged: (val) {
//               if (this.mounted)
//                 setState(() {
//                   currentText = val;
//                 });
//             },
//             shouldHighlight: false,
//             size: 250.0,
//             select: 2,
//             rotationDuration: 250,
//             autoPlay: true,
//             shouldDrawDividers: true,
//           ),
//         ],
//       ),
//     );
//   }
// }

class SpinwheelImageDemo extends StatefulWidget {
  @override
  _SpinwheelImageDemoState createState() => _SpinwheelImageDemoState();
}

class _SpinwheelImageDemoState extends State<SpinwheelImageDemo> {
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
      NamedImage(path: 'assets/images/goldfish.jpg', name: carouselNames[3], offsetX: 1.2),
    ];

    // For Image example
    carousel = CarouselSlider(
      items: imgPack.map((img) {
        return Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.orange,
          child: Image.asset(img.path),
        );
      }).toList(),
      carouselController: _carouselController,
      options: CarouselOptions(
        enableInfiniteScroll: false,
        // autoPlayAnimationDuration: Duration(seconds: 1),
        // autoPlay: true,
        // aspectRatio: 2.0,
        // enlargeCenterPage: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Image'),
        ),
        actions: getAppBarActions(context),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          carousel,
          Center(
            child: Spinwheel(
              size: 250.0,
              imageItems: imgPack,
              items: [],
              select: 1,
              onChanged: (val) {
                _carouselController.animateToPage(
                  carouselNames.indexOf(val),
                  duration: Duration(seconds: 1),
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
              // shouldDrawCenterPiece: false,
              wheelOrientation: 180,
              // duration: Duration(seconds: 5),
              autoPlay: true,
              autoPlayDuration: Duration(seconds: 1),
            ),
          ),
        ],
      ),
    );
  }
}
