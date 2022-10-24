import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:samara_xposi/components/card_ticket.dart';
import 'package:samara_xposi/detail_event.dart';
import 'package:samara_xposi/login.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<String> imgList = [
  'assets/images/testSeminar2.jpg',
  'assets/images/testSeminar3.jpg',
  'assets/images/testSeminar.png',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 600.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                    ),
                  ),
                ],
              )),
        ))
    .toList();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi, Rafli",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "22 Juni 2022",
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25.0,
            ),
            child: Container(
                padding: const EdgeInsets.only(
                  left: 5.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Event',
                      border: InputBorder.none,
                      fillColor: Colors.grey.withOpacity(0.5),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey)),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Event Terbaru",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Flexible(
            child: SizedBox(
              height: 150,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar2.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Ticket Terbaru",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Flexible(
            child: SizedBox(
              height: 150,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar2.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 7, bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                right: 7,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 0),
                    child: Container(
                        padding: const EdgeInsets.all(0),
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 2, // blur radius
                                offset: const Offset(0, 2),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              child: Image.asset(
                                "assets/images/testSeminar3.jpg",
                                height: 100,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 10,
                                right: 7,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: const Text(
                                      "Seminar XPOSI",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const DetailEvent()));
                                    },
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 7,
                                    ),
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Exhibitor",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CardTicket(
                      EventName: 'PT Satya Amarta',
                      EventImage: 'assets/images/splashscreen.png',
                    );
                  })),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
