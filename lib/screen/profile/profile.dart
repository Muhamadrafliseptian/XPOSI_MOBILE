import 'package:flutter/material.dart';
import 'package:samara_xposi/screen/profile/edit_profile.dart';
import 'package:samara_xposi/homepage.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                builder: (BuildContext context) => const HomePage()));
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
              Center(
                child: Stack(children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1))
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://akcdn.detik.net.id/community/media/visual/2022/01/08/gavi.jpeg?w=700&q=90'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Info Profil",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Ubah",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const EditProfile()));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                width: 130,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 217, 217, 217),
                      offset: const Offset(
                        1.0,
                        2.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
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
                    const TextField(
                      readOnly: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Muhamad Rafli Septian",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      readOnly: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "rafli@gmail.com",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      readOnly: true,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: "26 Agustus 2002",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: const TextField(
                        readOnly: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "****",
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
