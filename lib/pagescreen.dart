import 'package:flutter/material.dart';

void main() {
  runApp(const PageScreen());
}

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  // This widget is the root ofar your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const PageScreen(),
    );
  }

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: demo_data.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                        image: demo_data[index].image,
                        title: demo_data[index].title,
                        description: demo_data[index].description,
                      )),
            ),
            Row(
              children: [
                ...List.generate(
                  demo_data.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                          curve: Curves.ease,
                          duration: Duration(milliseconds: 300));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    child: Image.asset(
                      "assets/icons/arrow.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.blue.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/pagscreen.png",
    title: "find what item you've \nbeen looking for",
    description:
        "here come the sun tototootototototaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  ),
  Onboard(
    image: "assets/images/pagscreen.png",
    title: "find what item you've \nbeen looking for",
    description:
        "here come the sun tototootototototaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  ),
  Onboard(
    image: "assets/images/pagscreen.png",
    title: "find what item you've \nbeen looking for",
    description:
        "here come the sun tototootototototaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  ),
];

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent(
      {Key? key,
      required this.title,
      required this.image,
      required this.description})
      : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
