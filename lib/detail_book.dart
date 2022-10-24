import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samara_xposi/book_event.dart';
import 'package:samara_xposi/utils/utils.dart';

class DetailBook extends StatefulWidget {
  const DetailBook({super.key});

  @override
  State<DetailBook> createState() => _DetailBookState();
}

class _DetailBookState extends State<DetailBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Detail Data Diri',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookEvent()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(25),
                width: 130,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 81, 81, 81).withOpacity(0.2),
                      blurRadius: 5.0,
                      spreadRadius: 4.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Container(
                    child: Column(
                  children: [
                    Container(
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: "Nama Lengkap",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: "Alamat Email",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phone),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: "Nomor Telepon",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextField(
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.location_city),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          hintText: "Alamat Kamu",
                        ),
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
