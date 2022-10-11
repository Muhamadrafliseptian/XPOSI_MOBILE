import 'package:flutter/material.dart';
import 'package:samara_xposi/screen/autentikasi/register.dart';
import 'package:samara_xposi/screen/autentikasi/pagescreen.dart';
import 'package:samara_xposi/homepage.dart';

void main() {
  runApp(const DetailEvent());
}

class DetailEvent extends StatelessWidget {
  const DetailEvent({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const DetailEventPage(title: ''),
    );
  }
}

class DetailEventPage extends StatefulWidget {
  const DetailEventPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DetailEventPage> createState() => _DetailEventState();
}

class _DetailEventState extends State<DetailEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            width: 500,
            child: Image.asset(
              "assets/images/testSeminar.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: const Text(
              "Seminar Xposi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, top: 10, bottom: 5),
            child: const Text(
              "by Samara",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const Divider(
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              children: const [
                Icon(Icons.date_range),
                Text(
                  " Tanggal and Waktu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 27, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Sabtu, 26 September 2022",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "15:00 - 17:00 PM ",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              children: const [
                Icon(Icons.location_pin),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Lokasi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 27, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Jl. Jenderal Sudirman No.Kav  50",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Jakarta Selatan",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              children: const [
                Icon(Icons.description),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Deskripsi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 29, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "is simply dummy text of the but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
