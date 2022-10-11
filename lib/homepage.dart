import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:samara_xposi/components/cardTicket.dart';
import 'package:samara_xposi/detailevent.dart';
import 'package:samara_xposi/screen/autentikasi/login.dart';
import 'package:samara_xposi/components/cardExhibitor.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/cardEvent.dart';

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

final List Event = [
  ['Pestapora', 'assets/images/testSeminar.png', '23 Juli 2022', 'read'],
  [
    'Pestapora',
    'assets/images/testSeminar2.jpg',
    '21 Oktober wwwwwwwwwwwwwwwwwwwwwwwwwwwww2022',
    'read'
  ],
  ['Pestapora', 'assets/images/testSeminar3.jpg', '28', 'read']
];

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
            height: 10,
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
            height: 10,
          ),
          Container(
              height: 145,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: Event.length,
                  itemBuilder: (context, index) {
                    return CardEvent(
                      EventName: Event[index][0],
                      EventImage: Event[index][1],
                      EventDate: Event[index][2],
                      EventDetail: Event[index][3],
                    );
                  })),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Tiket Terbaru",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 145,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CardEvent(
                      EventName: 'PT Satya Amarta',
                      EventImage: 'assets/images/testSeminar.png',
                      EventDate: '24 Juli',
                      EventDetail: 'Read More',
                    );
                  })),
          const SizedBox(
            height: 10,
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
                      TicketName:
                          'PT Satya Amartaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                      TicketImage: 'assets/images/splashscreen.png',
                    );
                  })),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
