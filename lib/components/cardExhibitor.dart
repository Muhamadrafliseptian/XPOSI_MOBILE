// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CardTicket extends StatelessWidget {
  final String TicketName;
  final String TicketImage;

  CardTicket({required this.TicketName, required this.TicketImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 170,
          padding: EdgeInsets.only(left: 8, right: 8, top: 10),
          color: Color.fromARGB(255, 211, 211, 211),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(TicketImage),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 7, bottom: 7),
                  child: Text(
                    TicketName,
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                    softWrap: false,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
