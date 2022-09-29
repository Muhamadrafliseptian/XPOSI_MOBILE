// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:samara_xposi/detailevent.dart';

class CardEvent extends StatelessWidget {
  final String EventName;
  final String EventDetail;
  final String EventDate;
  final String EventImage;

  CardEvent({
    required this.EventName,
    required this.EventImage,
    required this.EventDetail,
    required this.EventDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 24, 24, 77),
              spreadRadius: 2, //spread radius
              blurRadius: 2, // blur radius
              offset: Offset(0, 2),
            )
          ]),
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    child: Image.asset(
                      EventImage,
                      height: 100,
                      width: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: InkWell(
                  child: Text(
                    EventName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                    softWrap: false,
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DetailEvent()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  EventDate,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 8,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                  softWrap: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  EventDetail,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 8,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                  softWrap: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
