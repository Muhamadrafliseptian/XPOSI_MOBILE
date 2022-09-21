// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CardTicket extends StatelessWidget {
  final String EventName;
  final String EventImage;

  CardTicket({required this.EventName, required this.EventImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 200,
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 17),
          color: Color.fromARGB(255, 211, 211, 211),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(EventImage),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        EventName,
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
