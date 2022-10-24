import 'dart:html';

import 'package:flutter/material.dart';
import 'package:samara_xposi/models/event.dart';
import 'package:samara_xposi/route/app_route_name.dart';
import 'package:samara_xposi/route/app_route.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 320,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: eventXposi.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouteName.detailEvent,
                arguments: eventXposi[index],
              );
            },
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width * 0.6,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          eventXposi[index].eventimage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                eventXposi[index].eventname,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.place,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(eventXposi[index].eventlocation),
                                ],
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\$${eventXposi[index].eventprice}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              const TextSpan(text: "\n"),
                              TextSpan(
                                text: "/Person",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
