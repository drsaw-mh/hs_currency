import 'package:flutter/cupertino.dart';
import 'package:myanmar_currency/pages/home/home.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.route:
        return _pageRouter(page: Home());
    }
  }

  static _pageRouter({required Widget page, RouteSettings? settings}) {
    return CupertinoPageRoute(
      builder: (_) => page,
      settings: settings,
    );
  }
}
