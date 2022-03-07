import 'package:example/spinner_page.dart';
import 'package:flutter/material.dart';

class MainSpinnerPage extends StatelessWidget {
  const MainSpinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xff4E267B),
              Color(0xff361957),
            ],
          ),
        ),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('OnTap'),
            ),
            Expanded(
              child: KhaltiSpinnerPage(),
            ),
          ],
        ),
      ),
    );
  }
}
