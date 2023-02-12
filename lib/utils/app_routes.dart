import 'package:flutter/material.dart';

import '../features/home/home_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        _erroRoute();
    }
    return null;
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: Text('ERROR'),
        ),
        body: Text('Page not Found'),
      );
    });
  }
}
