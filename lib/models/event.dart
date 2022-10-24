import 'package:samara_xposi/screen/book_event/detail_event.dart';

class CardEvent {
  final String eventimage;
  final String eventname;
  final String eventlocation;
  final int eventprice;
  final int eventrating;
  final String eventheadline;
  final String eventdate;
  final String eventdetail;

  CardEvent({
    required this.eventname,
    required this.eventimage,
    required this.eventdetail,
    required this.eventrating,
    required this.eventlocation,
    required this.eventheadline,
    required this.eventdate,
    required this.eventprice,
  });
}

final List eventXposi = [
  CardEvent(
      eventname: "Seminar",
      eventimage: "assets/images/testSeminar.png",
      eventdetail: "EventDetail",
      eventlocation: "Jakarta",
      eventrating: 5,
      eventheadline: "halo",
      eventdate: "20 Oktober",
      eventprice: 20),
  CardEvent(
      eventname: "Seminar",
      eventimage: "assets/images/testSeminar3.jpg",
      eventdetail: "EventDetail",
      eventrating: 5,
      eventheadline: "halo",
      eventlocation: "Jakarta",
      eventdate: "20 Oktober",
      eventprice: 20),
  CardEvent(
      eventname: "Seminar",
      eventimage: "assets/images/testSeminar2.jpg",
      eventrating: 5,
      eventdetail: "EventDetail",
      eventheadline: "halo",
      eventlocation: "Jakarta",
      eventdate: "20 Oktober",
      eventprice: 20),
];

class SpecialEvent {
  final String specialeventimage;
  final String specialeventname;
  final String specialeventdate;
  final String specialeventlocation;
  final int specialeventprice;

  SpecialEvent({
    required this.specialeventimage,
    required this.specialeventname,
    required this.specialeventdate,
    required this.specialeventlocation,
    required this.specialeventprice,
  });
}

final List specialEvent = [
  SpecialEvent(
      specialeventimage: "assets/images/testSeminar.png",
      specialeventname: "seminar",
      specialeventdate: "24 Oktober 2022",
      specialeventlocation: "Jakarta",
      specialeventprice: 20),
  SpecialEvent(
      specialeventimage: "assets/images/testSeminar3.jpg",
      specialeventname: "seminar",
      specialeventdate: "24 Oktober 2022",
      specialeventlocation: "Jakarta",
      specialeventprice: 20),
  SpecialEvent(
      specialeventimage: "assets/images/testSeminar2.jpg",
      specialeventname: "seminar",
      specialeventdate: "24 Oktober 2022",
      specialeventlocation: "Jakarta",
      specialeventprice: 20),
];
final detailhealth = eventXposi.reversed.toList();
