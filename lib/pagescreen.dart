import 'package:flutter/material.dart';
import 'package:samara_xposi/register.dart';

void main() {
  runApp(const PageScreen());
}

class PageScreen extends StatelessWidget {
  const PageScreen({Key? key}) : super(key: key);

  // This widget is the root ofar your application.
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const PageScreen()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            child: Image.asset(
              "assets/images/pagscreen.png",
              fit: BoxFit.contain,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Get Connect To Event",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: (() {}),
            child: Text(
              "Login with Google",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              fixedSize: const Size(150, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (() {}),
            child: Text(
              "Login With Facebook",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              fixedSize: const Size(150, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: GestureDetector(
              child: Text(
                "Don't have an account? Sign Up Here",
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const Register()));
              },
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
