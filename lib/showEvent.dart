// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "Hasil qr code";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              child: const Text("Scan"),
              onPressed: () async {
                text = (await scanner.scan())!;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
