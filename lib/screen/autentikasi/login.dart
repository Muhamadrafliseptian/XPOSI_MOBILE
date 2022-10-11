import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:samara_xposi/screen/autentikasi/fogotPassword.dart';
import 'package:samara_xposi/screen/autentikasi/register.dart';
import 'package:samara_xposi/screen/autentikasi/pagescreen.dart';
import 'package:samara_xposi/homepage.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const LoginPage(title: ''),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        builder: (BuildContext context) => const Register()));
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const Forgot()));
            },
            child: Container(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
            child: Text(
              "Login",
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
          Row(children: <Widget>[
            Expanded(child: Divider()),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "OR",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(child: Divider()),
          ]),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
            child: Text(
              "Login with Google",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(115, 29, 29, 29),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 237, 237, 237),
              fixedSize: const Size(150, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const Register()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Dont have an account? ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'Register', style: TextStyle(color: Colors.blue)),
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
