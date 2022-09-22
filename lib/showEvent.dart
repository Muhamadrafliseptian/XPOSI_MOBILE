// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ShowEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              top: 20,
              right: 35,
            ),
            child: Container(
                padding: const EdgeInsets.only(
                  left: 5.0,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Event',
                      border: InputBorder.none,
                      fillColor: Colors.grey.withOpacity(0.5),
                      prefixIcon: const Icon(Icons.search, color: Colors.grey)),
                )),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      height: 100,
                      child: Image.asset(
                        "assets/images/testSeminar.png",
                        height: 100,
                        width: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        "EventName",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                        ),
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        softWrap: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        "EventDate",
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
                        "EventDetail",
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
