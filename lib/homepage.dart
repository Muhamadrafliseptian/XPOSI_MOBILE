import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samara_xposi/components/card_event.dart';
import 'package:samara_xposi/screen/autentikasi/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List Event = [
  ['Pestapora', 'assets/images/testSeminar.png', '23 Juli 2022', 'read'],
  [
    'Pestapora',
    'assets/images/testSeminar2.jpg',
    '21 Oktober wwwwwwwwwwwwwwwwwwwwwwwwwwwww2022',
    'read'
  ],
  ['Pestapora', 'assets/images/testSeminar3.jpg', '28', 'read']
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            "assets/images/burger.png",
                          )),
                          shape: BoxShape.circle,
                          border: Border.all()),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Rafli",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Eits, kita ketemu lagi nih",
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Icon(Icons.notifications_none_rounded, size: 32)
                  ],
                ),
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width - 48,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.all(24),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(width: 8),
                    Text(
                      "Search any events, concert, stand up, seminar, etc.",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Latest",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Free",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 48,
                      width: (MediaQuery.of(context).size.width - 48 - 20) / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Popular",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Popular Event",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 145,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: Event.length,
                      itemBuilder: (context, index) {
                        return CardEvent(
                          EventName: Event[index][0],
                          EventImage: Event[index][1],
                          EventDate: Event[index][2],
                          EventDetail: Event[index][3],
                        );
                      })),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Explore All",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
