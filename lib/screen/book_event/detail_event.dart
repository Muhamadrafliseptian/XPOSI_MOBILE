// import 'package:flutter/material.dart';
// import 'package:samara_xposi/screen/book_event/book_event.dart';
// import 'package:samara_xposi/homepage.dart';

// void main() {
//   runApp(const DetailEvent());
// }

// class DetailEvent extends StatelessWidget {
//   const DetailEvent({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(),
//       home: const DetailEventPage(title: ''),
//     );
//   }
// }

// class DetailEventPage extends StatefulWidget {
//   const DetailEventPage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<DetailEventPage> createState() => _DetailEventState();
// }

// class _DetailEventState extends State<DetailEventPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Material(
//             color: Color.fromARGB(255, 0, 192, 134),
//             child: SizedBox(
//               height: 50,
//               width: 100,
//               child: Center(
//                 child: Text(
//                   'Free',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//               child: Material(
//             color: Colors.blueAccent,
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => BookEvent()));
//               },
//               child: SizedBox(
//                 height: 50,
//                 width: 100,
//                 child: Center(
//                   child: Text(
//                     "Book This Event",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ))
//         ],
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(20.0),
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 child: IconButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(
//                         builder: (BuildContext context) => const HomePage()));
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             alignment: Alignment.topCenter,
//             height: 300,
//             width: 500,
//             child: Image.asset(
//               "assets/images/testSeminar.png",
//               fit: BoxFit.contain,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 25),
//             child: const Text(
//               "Seminar Xposi",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 25, top: 10, bottom: 5),
//             child: const Text(
//               "by Samara",
//               style: TextStyle(fontSize: 10),
//             ),
//           ),
//           const Divider(
//             height: 2,
//           ),
//           Container(
//             padding: const EdgeInsets.only(top: 10, bottom: 5),
//             child: Row(
//               children: const [
//                 Icon(Icons.date_range),
//                 Text(
//                   " Tanggal and Waktu",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 27, bottom: 5),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Sabtu, 26 September 2022",
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Text(
//                   "15:00 - 17:00 PM ",
//                   style: TextStyle(fontSize: 10),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(top: 10, bottom: 5),
//             child: Row(
//               children: const [
//                 Icon(Icons.location_pin),
//                 Padding(
//                   padding: EdgeInsets.only(left: 5),
//                   child: Text(
//                     "Lokasi",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 27, bottom: 5),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "Jl. Jenderal Sudirman No.Kav  50",
//                   style: TextStyle(fontSize: 10),
//                 ),
//                 Text(
//                   "Jakarta Selatan",
//                   style: TextStyle(fontSize: 10),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(top: 10, bottom: 5),
//             child: Row(
//               children: const [
//                 Icon(Icons.description),
//                 Padding(
//                   padding: EdgeInsets.only(left: 5),
//                   child: Text(
//                     "Deskripsi",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 29, bottom: 5),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "is simply dummy text of the but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//                   style: TextStyle(fontSize: 10),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samara_xposi/models/event.dart';

class DetailEvent extends StatefulWidget {
  const DetailEvent({super.key});

  @override
  State<DetailEvent> createState() => _DetailEventState();
}

class _DetailEventState extends State<DetailEvent> {
  @override
  Widget build(BuildContext context) {
    final detailEvent = ModalRoute.of(context)?.settings.arguments as CardEvent;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  detailEvent.eventimage,
                ),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 24,
              right: 24,
            ),
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.more_vert,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              detailEvent.eventname,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.place,
                                  color: Colors.red,
                                ),
                                const SizedBox(width: 8),
                                Text(detailEvent.eventlocation),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                ),
                                const SizedBox(width: 8),
                                Text(detailEvent.eventrating.toString()),
                                const SizedBox(width: 8),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$${detailEvent.eventprice}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                                const TextSpan(text: "\n"),
                                TextSpan(
                                  text: "/Person",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    detailEvent.eventheadline,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    detailEvent.eventdetail,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
              left: 24,
              right: 24,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
              child: const Text("BOOK NOW"),
            ),
          ),
        ],
      ),
    );
  }
}
