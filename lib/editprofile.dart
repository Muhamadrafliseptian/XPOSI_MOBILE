import 'package:flutter/material.dart';
import 'package:samara_xposi/profile.dart';

void main() {
  runApp(const EditProfile());
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        title: Text(
          'Informasi Akun',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const Profile()));
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 10),
              width: 130,
              height: 350,
              child: Container(
                  child: Column(
                children: [
                  TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_circle),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Muhamad Rafli Septian",
                      labelText: "Nama",
                      alignLabelWithHint: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "rafliseptiannn25@gmail.com",
                      labelText: "Email",
                      alignLabelWithHint: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.date_range),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "26 September 2002",
                      labelText: "Tanggal Lahir",
                      alignLabelWithHint: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Muhamad Rafli Septian",
                        labelText: "Password",
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text(
                  "Simpan",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
