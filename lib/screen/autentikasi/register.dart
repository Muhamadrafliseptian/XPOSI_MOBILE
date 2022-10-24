import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:samara_xposi/screen/autentikasi/login.dart';
import 'package:samara_xposi/screen/autentikasi/register.dart';
import 'package:samara_xposi/screen/autentikasi/page_screen.dart';
import 'package:samara_xposi/homepage.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const RegisterPage(title: ''),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                        builder: (BuildContext context) => const Login()));
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
              "assets/images/onboarding1.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => Login()));
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
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
                hintText: "email",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
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
                hintText: "Mobile",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
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
                hintText: "password",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: "by signing up, you're agree to our ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'Terms & Condintions ',
                      style: TextStyle(color: Colors.blue)),
                  TextSpan(text: "and ", style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const Login()));
            },
            child: Text(
              "Register",
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
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const Login()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Have a join us? ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'Login here',
                        style: TextStyle(color: Colors.blue)),
                  ],
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
