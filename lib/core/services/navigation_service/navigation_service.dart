import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext get navigationContext => navigatorKey.currentContext!;

  Future<dynamic> pushAndRemoveUntil(Widget page) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
        CupertinoPageRoute(builder: (context) => page), (route) => true);
  }

  Future<dynamic> push(Widget page) {
    return navigatorKey.currentState!
        .push(CupertinoPageRoute(builder: (context) => page));
  }
}
