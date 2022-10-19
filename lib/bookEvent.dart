import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:samara_xposi/detailBook.dart';
import 'package:samara_xposi/homepage.dart';
import 'utils/utils.dart';

class BookEvent extends StatefulWidget {
  const BookEvent({super.key});

  @override
  State<BookEvent> createState() => _BookEventState();
}

  enum Cash { samara, gopay }

class _BookEventState extends State<BookEvent> {
  Cash? _cash = Cash.samara;

  late PageController _pageController;
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 107, 251, 111), Color.fromARGB(255, 13, 198, 254),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 450),
                  child: Container(
                    height: 1470,
                    color: scaffoldbg,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 75),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Konfirmasi Pesanan",
                              style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Spacer(),
                          // CircleAvatar(
                          //   radius: 20,
                          //   backgroundColor: white,
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              20.0,
                            ),
                          ),
                        ),
                        child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 230,
                                        child: Text(
                                          "Mohon menyelesaikan pembayaran sebelum waktu habis",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '13:41',
                                          style: TextStyle(
                                            color: red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // Column(
                      //   children: [
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width,
                      //       height: 200,
                      //       child: PageView.builder(
                      //           itemCount: images.length,
                      //           pageSnapping: true,
                      //           controller: _pageController,
                      //           onPageChanged: (page) {
                      //             setState(() {
                      //               activePage = page;
                      //             });
                      //           },
                      //           itemBuilder: (context, pagePosition) {
                      //             bool active = pagePosition == activePage;
                      //             return slider(images, pagePosition, active);
                      //           }),
                      //     ),
                      //     Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: indicators(images.length, activePage))
                      //   ],
                      // ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 350.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tahapan Membangun Strategi SEO Yang Efektif',
                              style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Online Event, Online',
                              style: TextStyle(
                                color: grey,
                                fontSize: 16,
                              ),
                              ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 15,
                              ),
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          "Berlaku Pada",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 15),
                                        child: Text(
                                          '15 Oktober 2022',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 15),
                                        child: Text(
                                          '00:00',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              width: double.infinity,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [ 
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 120,
                                        child: Text(
                                          "Tipe Ticket",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 15),
                                        child: Text(
                                          'Reguler',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 15),
                                        child: Text(
                                          '1 X Rp35.000',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                           
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: 300.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Detail Kontak (untuk e-ticket/voucher)',
                              style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           Card(
                            elevation: 1,
                            child: Container(
                              height: 0.05,
                              width: double.infinity,
                              color: grey,
                            ),
                          ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 15,
                              ),
                              width: double.infinity,
                              height: 170,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gunawan',
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 3,
                                    ),
                                    ),
                                  
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 100,
                                        child: 
                                        
                                        Text(
                                          "Nomor HP",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 10),
                                        child: Text(
                                          '15 Oktober 2022',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 100,
                                        child: 
                                        
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                              color: grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3, top: 5, right: 10),
                                        child: Text(
                                          'gunawan@gmail.com',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            
                            const SizedBox(
                              height: 10.0,
                            ),
                           
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 200.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '🎫 Detail pengunjung',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ], 
                            ),
                            const SizedBox(
                              height: 1.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32.5,),
                              child: Row(
                                children: const [
                                  Text(
                                   "Harus diisi - ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: green,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text('1 detail'),
                                ], 
                              ),
                            ),
                            
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              width: double.infinity,
                              height: 84,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children:  [
                                          SizedBox(
                                            width: 100,
                                            child: Text(
                                              'Reguler-1',
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          InkWell(
                                            child: Text(
                                              'Lengkapi Detail',
                                              style: TextStyle(
                                                color: green,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailBook()));
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 410.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Ringkasan pembayaran",
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ], 
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              width: double.infinity,
                              height: 225,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      
                                      Row(
                                        children: const [
                                          SizedBox(
                                            width: 150,
                                            child: Text(
                                              'Harga Ticket',
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Rp35.000',
                                            style: TextStyle(
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: const [
                                          SizedBox(
                                            width: 150,
                                            child: Text(
                                              'Biaya jasa',
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Rp0',
                                            style: TextStyle(
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              height: 70.0,
                              width: MediaQuery.of(context).size.width * 0.69,
                              decoration: BoxDecoration(
                                color: secondary,
                                // borderRadius: const BorderRadius.all(
                                //   Radius.circular(
                                //     16.0,
                                //   ),
                                // ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Agar kami bisa terus meningkatkan kualitas layanan buatmu",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                          wordSpacing: 4,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                                        children: const [
                                          SizedBox(
                                            width: 150,
                                            child: Text(
                                              'Biaya admin',
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Rp525',
                                            style: TextStyle(
                                              color: grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              width: double.infinity,
                              height: 84,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: const [
                                          SizedBox(
                                            width: 120,
                                            child: Text(
                                              'Total pembayaran',
                                              maxLines: 1,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text(
                                            'Rp35.525',
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 55.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(255, 195, 248, 196),
                          ),
                          color: Color.fromARGB(255, 201, 255, 203),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              100.0,
                            ),
                          ),
                        ),
                        child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                              children: const [
                                Icon(
                                  Icons.check_circle,
                                  size: 16,
                                  color: Color.fromARGB(255, 8, 203, 12),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10,),
                                  child: Text(
                                    'Memesan berarti menyetujui ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 17, 142, 21),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                      'syarat & ketentuan',
                                      style: TextStyle(
                                        decoration:TextDecoration.underline,
                                        color: Color.fromARGB(255, 12, 94, 13),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ),
                              ],
                            ),
                                ],
                              ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          width: double.maxFinite,
                          height:50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Row(
                               children: [
                                 Icon(
                                  Icons.monetization_on,
                                  size: 30,
                                  color: Color.fromARGB(255, 1, 230, 255),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Text(
                                    'Samara Coins',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                    )),
                                 ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0,),
                                    child: IconButton(
                                      icon: Icon(Icons.expand_more),
                                      onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder( // <-- SEE HERE
                                    borderRadius: BorderRadius.vertical( 
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  builder: (context) {
                                    return SizedBox(
                                      height: 800,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                         Center(
                                          heightFactor: 1,
                                           child: Icon(
                                            Icons.horizontal_rule,
                                            size: 35,
                                            color: Color.fromARGB(255, 176, 176, 176),
                                        ),
                                         ),
                                          SizedBox(height: 10,),
                                          ListTile(
                                            // leading: Icon(Icons.email),
                                            title: Text('Pilih metode pembayaran',
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          
                                          Container(
                                            height: 250,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff263238), width: 0.1),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20, right: 20, left: 20, bottom: 20),
                                              child: 
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Metode Pembayaran",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.black),
                                                      ),
                                                      
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Swipe kiri buat pilih metode utamamu",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey,
                                                            fontWeight: FontWeight.w500,
                                                            ),
                                                      ),
                                                      ],
                                                    ),
                                                     RadioListTile<Cash>(
                                                      title: const Text('Samara Coins'),
                                                      value: Cash.samara,
                                                      groupValue: _cash,
                                                      onChanged: (Cash? value) {
                                                        setState(() {
                                                          _cash = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<Cash>(
                                                      title: const Text('Gopay'),
                                                      value: Cash.gopay,
                                                      groupValue: _cash,
                                                      onChanged: (Cash? value) {
                                                        setState(() {
                                                          _cash = value;
                                                        });
                                                      },
                                                    ),
                                                   
                                                  ],
                                                ),
                                              ),
                                              ),     
                                              
                                        ],
                                      ),
                                    );
                                  });
                                },

                                    ),
                                    
                                  ),
                                  Spacer(),
                                  
                                       Card(
                                        elevation: 3,
                                         child: Container(
                                            width: 100,
                                            decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: Colors.grey, width: 1.0),
                                                ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(5.5),
                                                    child: Text(
                                                      'Voucher',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      wordSpacing: 2,
                                                    )),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:8.0),
                                                    child: Icon(
                                                Icons.arrow_circle_right,
                                                size: 20,
                                                color: Colors.red,
                                              ),
                                                  ),
                                                ],
                                              ),
                                              
                                            ],
                                          ),
                                                                             ),
                                       ),
                               ],
                             ),
                            ],
                          ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                       
                          width: double.maxFinite,
                          height: 65,
                          child:
                          //  ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Color.fromARGB(255, 81, 235, 86),
                          //     shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(50), // <-- Radius
                          //   ),
                          //   ),
                          //   child: Text(
                          //     "Book Your Event",
                          //      style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 18,
                          //       fontWeight: FontWeight.w700,
                          //     ),
                          //   ),
                          //    onPressed: () {
                          //     showModalBottomSheet(
                          //         context: context,
                          //           builder: (context) {
                          //           return SizedBox(
                          //             height: 200,
                          //             child: Column(
                          //               crossAxisAlignment: CrossAxisAlignment.start,
                          //               mainAxisSize: MainAxisSize.min,
                          //               children: const <Widget>[
                          //                 Text('dasd'),
                          //               ],
                          //             ),
                          //           );
                          //         });
                          //   },
                          // ),
                          ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 81, 235, 86),
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50), // <-- Radius
                              ),
                            ),
                             onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder( // <-- SEE HERE
                                    borderRadius: BorderRadius.vertical( 
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  builder: (context) {
                                    return SizedBox(
                                      height: 800,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                         Center(
                                          heightFactor: 1,
                                           child: Icon(
                                            Icons.horizontal_rule,
                                            size: 35,
                                            color: Color.fromARGB(255, 176, 176, 176),
                                        ),
                                         ),
                                          SizedBox(height: 10,),
                                          ListTile(
                                            // leading: Icon(Icons.email),
                                            title: Text('Pilih metode pembayaran',
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          
                                          Container(
                                            height: 250,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff263238), width: 0.1),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20, right: 20, left: 20, bottom: 20),
                                              child: 
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Metode Pembayaran",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.black),
                                                      ),
                                                      
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Swipe kiri buat pilih metode utamamu",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey,
                                                            fontWeight: FontWeight.w500,
                                                            ),
                                                      ),
                                                      ],
                                                    ),
                                                     RadioListTile<Cash>(
                                                      title: const Text('Samara Coins'),
                                                      value: Cash.samara,
                                                      groupValue: _cash,
                                                      onChanged: (Cash? value) {
                                                        setState(() {
                                                          _cash = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<Cash>(
                                                      title: const Text('Gopay'),
                                                      value: Cash.gopay,
                                                      groupValue: _cash,
                                                      onChanged: (Cash? value) {
                                                        setState(() {
                                                          _cash = value;
                                                        });
                                                      },
                                                    ),
                                                   
                                                  ],
                                                ),
                                              ),
                                              ),     
                                              
                                        ],
                                      ),
                                    );
                                  });
                                },
                              child: Text(
                              "Book Your Event",
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                      ),
                      // SizedBox(height: 20,),
                      // Container(
                      //   padding: const EdgeInsets.all(16),
                      //   height: 200.0,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.2),
                      //         spreadRadius: 4,
                      //         blurRadius: 5,
                      //         offset: const Offset(0, 7),
                      //       ),
                      //     ],
                      //     color: white,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       const Text(
                      //         '💙 Fitur Menarik',
                      //         style: TextStyle(
                      //           color: black,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 20,
                      //       ),
                      //       SizedBox(
                      //         height: 100.0,
                      //         child: Row(
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //           children: [
                      //             Stack(
                      //               children: [
                      //                 Column(
                      //                   children: [
                      //                     CircleAvatar(
                      //                       radius: 26,
                      //                       backgroundColor: secondary,
                      //                       child: const Text(
                      //                         '🏆',
                      //                         style: TextStyle(fontSize: 26),
                      //                       ),
                      //                     ),
                      //                     const SizedBox(
                      //                       height: 5.0,
                      //                     ),
                      //                     const Text(
                      //                       'Capaian',
                      //                       style: TextStyle(
                      //                           color: black,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 const Positioned(
                      //                   left: 33,
                      //                   child: CircleAvatar(
                      //                     radius: 10,
                      //                     backgroundColor: red,
                      //                     child: Text(
                      //                       '1',
                      //                       style: TextStyle(
                      //                           color: white,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             Stack(
                      //               children: [
                      //                 Column(
                      //                   children: [
                      //                     CircleAvatar(
                      //                       radius: 26,
                      //                       backgroundColor: Colors.grey[200],
                      //                       child: const Text(
                      //                         '🎁',
                      //                         style: TextStyle(fontSize: 26),
                      //                       ),
                      //                     ),
                      //                     const SizedBox(
                      //                       height: 5.0,
                      //                     ),
                      //                     const Text(
                      //                       'Ajak Teman',
                      //                       style: TextStyle(
                      //                           color: Colors.black,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 const Positioned(
                      //                   left: 46,
                      //                   child: CircleAvatar(
                      //                     radius: 10,
                      //                     backgroundColor: Colors.red,
                      //                     child: Text(
                      //                       '1',
                      //                       style: TextStyle(
                      //                           color: Colors.white,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             Stack(
                      //               children: [
                      //                 Column(
                      //                   children: [
                      //                     CircleAvatar(
                      //                       radius: 26,
                      //                       backgroundColor: secondary,
                      //                       child: const Text(
                      //                         '🤔',
                      //                         style: TextStyle(fontSize: 26),
                      //                       ),
                      //                     ),
                      //                     const SizedBox(
                      //                       height: 5.0,
                      //                     ),
                      //                     const Text(
                      //                       'Insight\nKamu',
                      //                       style: TextStyle(
                      //                           color: black,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 const Positioned(
                      //                   left: 52,
                      //                   child: CircleAvatar(
                      //                     radius: 10,
                      //                     backgroundColor: red,
                      //                     child: Text(
                      //                       '1',
                      //                       style: TextStyle(
                      //                           color: white,
                      //                           fontWeight: FontWeight.w400,
                      //                           fontSize: 14),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //             Column(
                      //               children: [
                      //                 CircleAvatar(
                      //                   radius: 26,
                      //                   backgroundColor: secondary,
                      //                   child: const Text(
                      //                     '🧾',
                      //                     style: TextStyle(fontSize: 26),
                      //                   ),
                      //                 ),
                      //                 const SizedBox(
                      //                   height: 5.0,
                      //                 ),
                      //                 const Text(
                      //                   'Bayar\nTagihan',
                      //                   textAlign: TextAlign.center,
                      //                   style: TextStyle(
                      //                       color: black,
                      //                       fontWeight: FontWeight.w400,
                      //                       fontSize: 14),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.all(16),
                      //   height: 240.0,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.2),
                      //         spreadRadius: 4,
                      //         blurRadius: 5,
                      //         offset: const Offset(0, 7),
                      //       ),
                      //     ],
                      //     color: white,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         children: const [
                      //           Text(
                      //             '🎯 Target',
                      //             style: TextStyle(
                      //               color: black,
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           Spacer(),
                      //           Icon(
                      //             Icons.arrow_forward_ios,
                      //             size: 18,
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 15.0,
                      //       ),
                      //       DottedBorder(
                      //         borderType: BorderType.RRect,
                      //         radius: const Radius.circular(12),
                      //         dashPattern: const [4],
                      //         color: secondary,
                      //         strokeWidth: 2,
                      //         child: Container(
                      //           padding: const EdgeInsets.only(
                      //               left: 10, right: 10, top: 10, bottom: 10),
                      //           width: double.infinity,
                      //           height: 140,
                      //           child: Row(
                      //             children: [
                      //               const FlutterLogo(
                      //                 size: 30,
                      //               ),
                      //               const SizedBox(
                      //                 width: 15.0,
                      //               ),
                      //               Column(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.start,
                      //                 mainAxisAlignment:
                      //                     MainAxisAlignment.spaceAround,
                      //                 children: [
                      //                   const SizedBox(
                      //                     width: 270,
                      //                     child: Text(
                      //                       'Yuk catat dan capai target keuanganmu hari ini!',
                      //                       style: TextStyle(
                      //                         color: black,
                      //                         fontSize: 14,
                      //                         fontWeight: FontWeight.w600,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   const SizedBox(
                      //                     width: 200,
                      //                     child: Text(
                      //                       'Catat target biar liburan & rumah impianmu gak jadi angan',
                      //                       softWrap: true,
                      //                       style: TextStyle(
                      //                         color: Colors.black54,
                      //                         fontSize: 12,
                      //                         fontWeight: FontWeight.w600,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Row(
                      //                     children: const [
                      //                       Text(
                      //                         'Tambah',
                      //                         style: TextStyle(
                      //                           color: primary,
                      //                           fontSize: 16,
                      //                           fontWeight: FontWeight.bold,
                      //                         ),
                      //                       ),
                      //                       SizedBox(
                      //                         width: 5,
                      //                       ),
                      //                       Icon(
                      //                         Icons.arrow_forward_ios,
                      //                         color: primary,
                      //                         size: 16,
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 ],
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.all(16),
                      //   height: 330.0,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.2),
                      //         spreadRadius: 4,
                      //         blurRadius: 5,
                      //         offset: const Offset(0, 7),
                      //       ),
                      //     ],
                      //     color: white,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.end,
                      //         children: const [
                      //           Text(
                      //             '💰 FinFund',
                      //             style: TextStyle(
                      //               color: black,
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           Spacer(),
                      //           Text(
                      //             'Aktifkan',
                      //             style: TextStyle(
                      //               color: primary,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: 5.0,
                      //           ),
                      //           Icon(
                      //             Icons.arrow_forward_ios,
                      //             color: primary,
                      //             size: 20,
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 15.0,
                      //       ),
                      //       Container(
                      //         height: 100.0,
                      //         decoration: BoxDecoration(
                      //           color: secondary,
                      //           borderRadius: const BorderRadius.all(
                      //             Radius.circular(
                      //               16.0,
                      //             ),
                      //           ),
                      //         ),
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(10),
                      //           child: Column(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               const Text(
                      //                 "Dapterin dana tunai hingga",
                      //                 style: TextStyle(
                      //                     fontSize: 16,
                      //                     color: Colors.black45,
                      //                     fontWeight: FontWeight.w500),
                      //               ),
                      //               const SizedBox(
                      //                 height: 5,
                      //               ),
                      //               Row(
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.center,
                      //                 children: const [
                      //                   Text(
                      //                     "Rp ",
                      //                     style: TextStyle(
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 12,
                      //                         color: black),
                      //                   ),
                      //                   Text("50.000.000",
                      //                       style: TextStyle(
                      //                           fontWeight: FontWeight.bold,
                      //                           fontSize: 24,
                      //                           color: black)),
                      //                 ],
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 10.0,
                      //       ),
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: Container(
                      //               padding: const EdgeInsets.all(10),
                      //               height: 60.0,
                      //               decoration: BoxDecoration(
                      //                 color: secondary,
                      //                 borderRadius: const BorderRadius.all(
                      //                   Radius.circular(
                      //                     16.0,
                      //                   ),
                      //                 ),
                      //               ),
                      //               child: Row(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children: [
                      //                   RichText(
                      //                     text: const TextSpan(
                      //                       style: TextStyle(fontSize: 28),
                      //                       children: <TextSpan>[
                      //                         TextSpan(
                      //                           text: '✅',
                      //                           style: TextStyle(
                      //                             fontWeight: FontWeight.bold,
                      //                           ),
                      //                         ),
                      //                         TextSpan(
                      //                           text: 'Pengajuan instan',
                      //                           style: TextStyle(
                      //                               color: Colors.black45,
                      //                               fontWeight: FontWeight.w500),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     textScaleFactor: 0.5,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10.0,
                      //           ),
                      //           Expanded(
                      //             child: Container(
                      //               padding: const EdgeInsets.all(10),
                      //               height: 60.0,
                      //               decoration: BoxDecoration(
                      //                 color: secondary,
                      //                 borderRadius: const BorderRadius.all(
                      //                   Radius.circular(
                      //                     16.0,
                      //                   ),
                      //                 ),
                      //               ),
                      //               child: Row(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children: [
                      //                   RichText(
                      //                     text: const TextSpan(
                      //                       style: TextStyle(fontSize: 28),
                      //                       children: <TextSpan>[
                      //                         TextSpan(
                      //                           text: '🤑',
                      //                           style: TextStyle(
                      //                             fontWeight: FontWeight.bold,
                      //                           ),
                      //                         ),
                      //                         TextSpan(
                      //                           text: 'Rp0 denda telat',
                      //                           style: TextStyle(
                      //                               color: Colors.black45,
                      //                               fontWeight: FontWeight.w500),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     textScaleFactor: 0.5,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 10.0,
                      //       ),
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: Container(
                      //               padding: const EdgeInsets.all(10),
                      //               height: 60.0,
                      //               decoration: BoxDecoration(
                      //                 color: secondary,
                      //                 borderRadius: const BorderRadius.all(
                      //                   Radius.circular(
                      //                     16.0,
                      //                   ),
                      //                 ),
                      //               ),
                      //               child: Row(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children: [
                      //                   RichText(
                      //                     text: const TextSpan(
                      //                       style: TextStyle(fontSize: 28),
                      //                       children: <TextSpan>[
                      //                         TextSpan(
                      //                           text: '💸',
                      //                           style: TextStyle(
                      //                             fontWeight: FontWeight.bold,
                      //                           ),
                      //                         ),
                      //                         TextSpan(
                      //                           text: 'Rate bunga 2,5%',
                      //                           style: TextStyle(
                      //                               color: Colors.black45,
                      //                               fontWeight: FontWeight.w500),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                     textScaleFactor: 0.5,
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10.0,
                      //           ),
                      //           Expanded(
                      //             child: Container(
                      //               alignment: Alignment.center,
                      //               padding: const EdgeInsets.all(10),
                      //               height: 60.0,
                      //               decoration: BoxDecoration(
                      //                 color: secondary,
                      //                 borderRadius: const BorderRadius.all(
                      //                   Radius.circular(
                      //                     16.0,
                      //                   ),
                      //                 ),
                      //               ),
                      //               child: const Text(
                      //                 "Lihat Benefit Lainnya",
                      //                 style: TextStyle(
                      //                     fontSize: 13,
                      //                     color: primary,
                      //                     fontWeight: FontWeight.bold),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.all(16),
                      //   height: 250.0,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.2),
                      //         spreadRadius: 4,
                      //         blurRadius: 5,
                      //         offset: const Offset(0, 7),
                      //       ),
                      //     ],
                      //     color: white,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         children: [
                      //           const Text(
                      //             '💡 Insight Tentang kamu',
                      //             style: TextStyle(
                      //               color: black,
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10.0,
                      //           ),
                      //           Container(
                      //             alignment: Alignment.center,
                      //             padding: const EdgeInsets.only(left: 2),
                      //             height: 25.0,
                      //             width: 50,
                      //             decoration: const BoxDecoration(
                      //               color: red,
                      //               borderRadius: BorderRadius.all(
                      //                 Radius.circular(
                      //                   16.0,
                      //                 ),
                      //               ),
                      //             ),
                      //             child: const Text(
                      //               'Baru ',
                      //               style: TextStyle(
                      //                 color: white,
                      //                 fontSize: 12,
                      //                 fontWeight: FontWeight.bold,
                      //               ),
                      //             ),
                      //           ),
                      //           const Spacer(),
                      //           const Icon(
                      //             Icons.arrow_forward_ios,
                      //             size: 18,
                      //           ),
                      //         ],
                      //       ),
                      //       // const SizedBox(
                      //       //   height: 15.0,
                      //       // ),
                      //       // SingleChildScrollView(
                      //       //   scrollDirection: Axis.horizontal,
                      //       //   child: Row(
                      //       //     children: [
                      //       //       Container(
                      //       //         height: 160.0,
                      //       //         decoration: const BoxDecoration(
                      //       //           color: orange,
                      //       //           borderRadius: BorderRadius.all(
                      //       //             Radius.circular(
                      //       //               16.0,
                      //       //             ),
                      //       //           ),
                      //       //         ),
                      //       //         child: Column(
                      //       //           children: [
                      //       //             Container(
                      //       //               padding: const EdgeInsets.all(10),
                      //       //               height: 120.0,
                      //       //               decoration: const BoxDecoration(
                      //       //                 color: cream,
                      //       //                 borderRadius: BorderRadius.all(
                      //       //                   Radius.circular(
                      //       //                     16.0,
                      //       //                   ),
                      //       //                 ),
                      //       //               ),
                      //       //               child: Row(
                      //       //                 crossAxisAlignment:
                      //       //                     CrossAxisAlignment.start,
                      //       //                 children: [
                      //       //                   const SizedBox(
                      //       //                     width: 252,
                      //       //                     child: Text(
                      //       //                       "Kamu bisa hemat biaya kopi, loh!",
                      //       //                       style: TextStyle(
                      //       //                         color: textbrown,
                      //       //                         fontSize: 22,
                      //       //                         fontWeight: FontWeight.bold,
                      //       //                       ),
                      //       //                     ),
                      //       //                   ),
                      //       //                   const SizedBox(
                      //       //                     width: 20.0,
                      //       //                   ),
                      //       //                   Container(
                      //       //                     alignment: Alignment.center,
                      //       //                     padding: const EdgeInsets.only(
                      //       //                         left: 2),
                      //       //                     height: 25.0,
                      //       //                     width: 50,
                      //       //                     decoration: const BoxDecoration(
                      //       //                       color: red,
                      //       //                       borderRadius: BorderRadius.all(
                      //       //                         Radius.circular(
                      //       //                           16.0,
                      //       //                         ),
                      //       //                       ),
                      //       //                     ),
                      //       //                     child: const Text(
                      //       //                       'Baru ',
                      //       //                       style: TextStyle(
                      //       //                         color: white,
                      //       //                         fontSize: 12,
                      //       //                         fontWeight: FontWeight.bold,
                      //       //                       ),
                      //       //                     ),
                      //       //                   ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //             Padding(
                      //       //               padding: const EdgeInsets.only(top: 8),
                      //       //               child: Row(
                      //       //                 crossAxisAlignment:
                      //       //                     CrossAxisAlignment.center,
                      //       //                 mainAxisAlignment:
                      //       //                     MainAxisAlignment.center,
                      //       //                 children: const [
                      //       //                   Text(
                      //       //                     'Baca Sekarang ',
                      //       //                     style: TextStyle(
                      //       //                       color: Colors.white,
                      //       //                       fontSize: 16,
                      //       //                       fontWeight: FontWeight.bold,
                      //       //                     ),
                      //       //                   ),
                      //       //                   SizedBox(
                      //       //                     width: 5.0,
                      //       //                   ),
                      //       //                   Icon(
                      //       //                     Icons.arrow_forward_ios,
                      //       //                     color: white,
                      //       //                     size: 12.0,
                      //       //                   ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //           ],
                      //       //         ),
                      //       //       ),
                      //       //       const SizedBox(
                      //       //         width: 20.0,
                      //       //       ),
                      //       //       Container(
                      //       //         height: 160.0,
                      //       //         decoration: const BoxDecoration(
                      //       //           color: greenold,
                      //       //           borderRadius: BorderRadius.all(
                      //       //             Radius.circular(
                      //       //               16.0,
                      //       //             ),
                      //       //           ),
                      //       //         ),
                      //       //         child: Column(
                      //       //           children: [
                      //       //             Container(
                      //       //               padding: const EdgeInsets.all(10),
                      //       //               height: 120.0,
                      //       //               decoration: const BoxDecoration(
                      //       //                 color: greenbg,
                      //       //                 borderRadius: BorderRadius.all(
                      //       //                   Radius.circular(
                      //       //                     16.0,
                      //       //                   ),
                      //       //                 ),
                      //       //               ),
                      //       //               child: Row(
                      //       //                 crossAxisAlignment:
                      //       //                     CrossAxisAlignment.start,
                      //       //                 children: [
                      //       //                   const SizedBox(
                      //       //                     width: 252,
                      //       //                     child: Text(
                      //       //                       "Investasikan reksa dana mulai dari Rp10.000 aja!",
                      //       //                       style: TextStyle(
                      //       //                         color: textgreen,
                      //       //                         fontSize: 22,
                      //       //                         fontWeight: FontWeight.bold,
                      //       //                       ),
                      //       //                     ),
                      //       //                   ),
                      //       //                   const SizedBox(
                      //       //                     width: 20.0,
                      //       //                   ),
                      //       //                   Container(
                      //       //                     alignment: Alignment.center,
                      //       //                     padding: const EdgeInsets.only(
                      //       //                         left: 2),
                      //       //                     height: 25.0,
                      //       //                     width: 50,
                      //       //                     decoration: const BoxDecoration(
                      //       //                       color: red,
                      //       //                       borderRadius: BorderRadius.all(
                      //       //                         Radius.circular(
                      //       //                           16.0,
                      //       //                         ),
                      //       //                       ),
                      //       //                     ),
                      //       //                     child: const Text(
                      //       //                       'Baru ',
                      //       //                       style: TextStyle(
                      //       //                         color: white,
                      //       //                         fontSize: 12,
                      //       //                         fontWeight: FontWeight.bold,
                      //       //                       ),
                      //       //                     ),
                      //       //                   ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //             Padding(
                      //       //               padding: const EdgeInsets.only(top: 8),
                      //       //               child: Row(
                      //       //                 crossAxisAlignment:
                      //       //                     CrossAxisAlignment.center,
                      //       //                 mainAxisAlignment:
                      //       //                     MainAxisAlignment.center,
                      //       //                 children: const [
                      //       //                   Text(
                      //       //                     'Baca Sekarang ',
                      //       //                     style: TextStyle(
                      //       //                       color: white,
                      //       //                       fontSize: 16,
                      //       //                       fontWeight: FontWeight.bold,
                      //       //                     ),
                      //       //                   ),
                      //       //                   SizedBox(
                      //       //                     width: 5.0,
                      //       //                   ),
                      //       //                   Icon(
                      //       //                     Icons.arrow_forward_ios,
                      //       //                     color: white,
                      //       //                     size: 12.0,
                      //       //                   ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //           ],
                      //       //         ),
                      //       //       ),
                      //       //       const SizedBox(
                      //       //         width: 10.0,
                      //       //       ),
                      //       //       Container(
                      //       //           height: 160,
                      //       //           width: 100.0,
                      //       //           decoration: BoxDecoration(
                      //       //             color: secondary,
                      //       //             borderRadius: const BorderRadius.all(
                      //       //               Radius.circular(
                      //       //                 16.0,
                      //       //               ),
                      //       //             ),
                      //       //           ),
                      //       //           child: const Center(
                      //       //             child: Icon(
                      //       //               Icons.arrow_forward_ios,
                      //       //               size: 18,
                      //       //             ),
                      //       //           )),
                      //       //     ],
                      //       //   ),
                      //       // ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.all(16),
                      //   height: 180.0,
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.withOpacity(0.2),
                      //         spreadRadius: 4,
                      //         blurRadius: 5,
                      //         offset: const Offset(0, 7),
                      //       ),
                      //     ],
                      //     color: white,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Row(
                      //         children: [
                      //           const Text(
                      //             '🎫 Voucher Hapis',
                      //             style: TextStyle(
                      //               color: black,
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 10.0,
                      //           ),
                      //           Container(
                      //             alignment: Alignment.center,
                      //             padding: const EdgeInsets.only(left: 2),
                      //             height: 25.0,
                      //             width: 50,
                      //             decoration: const BoxDecoration(
                      //               color: red,
                      //               borderRadius: BorderRadius.all(
                      //                 Radius.circular(
                      //                   16.0,
                      //                 ),
                      //               ),
                      //             ),
                      //             child: const Text(
                      //               'Baru ',
                      //               style: TextStyle(
                      //                 color: white,
                      //                 fontSize: 12,
                      //                 fontWeight: FontWeight.bold,
                      //               ),
                      //             ),
                      //           ),
                      //           const Spacer(),
                      //           const Icon(
                      //             Icons.arrow_forward_ios,
                      //             size: 18,
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 15.0,
                      //       ),
                      //       SingleChildScrollView(
                      //         scrollDirection: Axis.horizontal,
                      //         child: Row(
                      //           children: [
                      //             Container(
                      //                 height: 100.0,
                      //                 width: 300,
                      //                 decoration: const BoxDecoration(
                      //                   color: purplebg,
                      //                   borderRadius: BorderRadius.all(
                      //                     Radius.circular(
                      //                       16.0,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 child: Row(
                      //                   children: [
                      //                     Container(
                      //                         height: 24,
                      //                         width: 12,
                      //                         decoration: const BoxDecoration(
                      //                           color: white,
                      //                           borderRadius: BorderRadius.only(
                      //                             bottomRight:
                      //                                 Radius.circular(100),
                      //                             topRight: Radius.circular(100),
                      //                           ),
                      //                         )),
                      //                     const SizedBox(
                      //                       width: 12.0,
                      //                     ),
                      //                     const CircleAvatar(
                      //                       backgroundColor: white,
                      //                       backgroundImage: NetworkImage(
                      //                           'https://picsum.photos/1000'),
                      //                     ),
                      //                     const SizedBox(
                      //                       width: 15.0,
                      //                     ),
                      //                     Column(
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.start,
                      //                         mainAxisAlignment:
                      //                             MainAxisAlignment.center,
                      //                         children: [
                      //                           RichText(
                      //                             text: const TextSpan(
                      //                               style:
                      //                                   TextStyle(fontSize: 28),
                      //                               children: <TextSpan>[
                      //                                 TextSpan(
                      //                                     text: 'Diskon ',
                      //                                     style: TextStyle(
                      //                                         color: textpurple,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .w500)),
                      //                                 TextSpan(
                      //                                     text: 'LIFEPAL ',
                      //                                     style: TextStyle(
                      //                                         color: textpurple,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .bold)),
                      //                                 TextSpan(
                      //                                     text: 'sampai',
                      //                                     style: TextStyle(
                      //                                         color: textpurple,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .w500)),
                      //                               ],
                      //                             ),
                      //                             textScaleFactor: 0.5,
                      //                           ),
                      //                           const SizedBox(
                      //                             height: 5.0,
                      //                           ),
                      //                           const Text(
                      //                             "25%",
                      //                             style: TextStyle(
                      //                               color: textpurple,
                      //                               fontSize: 22,
                      //                               fontWeight: FontWeight.bold,
                      //                             ),
                      //                           ),
                      //                           const SizedBox(
                      //                             height: 5.0,
                      //                           ),
                      //                           const Text(
                      //                               "Cek selengkapnya disini",
                      //                               style: TextStyle(
                      //                                   fontSize: 14,
                      //                                   color: textpurple,
                      //                                   fontWeight:
                      //                                       FontWeight.w500)),
                      //                         ]),
                      //                     const SizedBox(
                      //                       width: 0,
                      //                     ),
                      //                     const Spacer(),
                      //                     Container(
                      //                         height: 24,
                      //                         width: 12,
                      //                         decoration: const BoxDecoration(
                      //                           color: white,
                      //                           borderRadius: BorderRadius.only(
                      //                             bottomLeft:
                      //                                 Radius.circular(100),
                      //                             topLeft: Radius.circular(100),
                      //                           ),
                      //                         )),
                      //                   ],
                      //                 )),
                      //             const SizedBox(
                      //               width: 20.0,
                      //             ),
                      //             Container(
                      //                 height: 100.0,
                      //                 width: 300,
                      //                 decoration: const BoxDecoration(
                      //                   color: cream,
                      //                   borderRadius: BorderRadius.all(
                      //                     Radius.circular(
                      //                       16.0,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 child: Row(
                      //                   children: [
                      //                     Container(
                      //                         height: 24,
                      //                         width: 12,
                      //                         decoration: const BoxDecoration(
                      //                           color: white,
                      //                           borderRadius: BorderRadius.only(
                      //                             bottomRight:
                      //                                 Radius.circular(100),
                      //                             topRight: Radius.circular(100),
                      //                           ),
                      //                         )),
                      //                     const SizedBox(
                      //                       width: 12.0,
                      //                     ),
                      //                     const CircleAvatar(
                      //                       backgroundColor: white,
                      //                       backgroundImage: NetworkImage(
                      //                           'https://picsum.photos/1000'),
                      //                     ),
                      //                     const SizedBox(
                      //                       width: 15.0,
                      //                     ),
                      //                     Column(
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.start,
                      //                         mainAxisAlignment:
                      //                             MainAxisAlignment.center,
                      //                         children: [
                      //                           RichText(
                      //                             text: const TextSpan(
                      //                               style:
                      //                                   TextStyle(fontSize: 28),
                      //                               children: <TextSpan>[
                      //                                 TextSpan(
                      //                                     text: 'Diskon ',
                      //                                     style: TextStyle(
                      //                                         color: textbrown,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .w500)),
                      //                                 TextSpan(
                      //                                     text: 'YELLOWFI ',
                      //                                     style: TextStyle(
                      //                                         color: textbrown,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .bold)),
                      //                                 TextSpan(
                      //                                     text: 'sampai',
                      //                                     style: TextStyle(
                      //                                         color: textbrown,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .w500)),
                      //                               ],
                      //                             ),
                      //                             textScaleFactor: 0.5,
                      //                           ),
                      //                           const SizedBox(
                      //                             height: 5.0,
                      //                           ),
                      //                           const Text(
                      //                             "10%",
                      //                             style: TextStyle(
                      //                               color: textbrown,
                      //                               fontSize: 22,
                      //                               fontWeight: FontWeight.bold,
                      //                             ),
                      //                           ),
                      //                           const SizedBox(
                      //                             height: 5.0,
                      //                           ),
                      //                           const Text(
                      //                               "Cek selengkapnya disini",
                      //                               style: TextStyle(
                      //                                   fontSize: 14,
                      //                                   color: textbrown,
                      //                                   fontWeight:
                      //                                       FontWeight.w500)),
                      //                         ]),
                      //                     const SizedBox(
                      //                       width: 0,
                      //                     ),
                      //                     const Spacer(),
                      //                     Container(
                      //                         height: 24,
                      //                         width: 12,
                      //                         decoration: const BoxDecoration(
                      //                           color: white,
                      //                           borderRadius: BorderRadius.only(
                      //                             bottomLeft:
                      //                                 Radius.circular(100),
                      //                             topLeft: Radius.circular(100),
                      //                           ),
                      //                         )),
                      //                   ],
                      //                 )),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20.0,
                      // ),
                      // Container(
                      //   padding: const EdgeInsets.all(15),
                      //   height: 100.0,
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //       width: 1,
                      //       color: borderblue,
                      //     ),
                      //     color: youngblue,
                      //     borderRadius: const BorderRadius.all(
                      //       Radius.circular(
                      //         16.0,
                      //       ),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       const Text(
                      //         'Gimana sih cara pake Finku?',
                      //         style: TextStyle(
                      //           color: Colors.black,
                      //           fontSize: 15,
                      //           fontWeight: FontWeight.w600,
                      //         ),
                      //       ),
                      //       const SizedBox(
                      //         height: 5,
                      //       ),
                      //       Row(
                      //         children: const [
                      //           Text(
                      //             'Pelajari bareng Fin-E!',
                      //             style: TextStyle(
                      //               color: primary,
                      //               fontSize: 14,
                      //               fontWeight: FontWeight.bold,
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: 5,
                      //           ),
                      //           Icon(
                      //             Icons.arrow_forward_ios,
                      //             color: primary,
                      //             size: 12,
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
