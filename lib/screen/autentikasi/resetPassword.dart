import 'package:flutter/material.dart';
import 'package:samara_xposi/screen/autentikasi/OTP.dart';
import 'package:samara_xposi/screen/autentikasi/fogotPassword.dart';
import 'package:samara_xposi/screen/autentikasi/login.dart';
import 'package:samara_xposi/screen/autentikasi/pagescreen.dart';
import 'package:samara_xposi/homepage.dart';

void main() {
  runApp(const Reset());
}

class Reset extends StatelessWidget {
  const Reset({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const ResetPage(title: ''),
    );
  }
}

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Forgot()));
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
            alignment: Alignment.center,
            height: 200,
            child: Image.asset(
              "assets/images/onboarding0.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Reset \nPassword",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                "Don't worry it happens. Please enter the address associated with your account",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                hintText: "New Password",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              autocorrect: false,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                hintText: "Confirm New Password",
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const OTP()));
            },
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              fixedSize: const Size(150, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
