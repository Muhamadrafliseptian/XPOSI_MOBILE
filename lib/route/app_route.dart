import 'package:flutter/cupertino.dart';
import 'package:samara_xposi/route/app_route_name.dart';
import 'package:samara_xposi/screen/book_event/detail_event.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.detailEvent:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const DetailEvent(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }
    return null;
  }
}
