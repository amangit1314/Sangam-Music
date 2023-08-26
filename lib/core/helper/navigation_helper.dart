import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigationHelpers {
  Future<Object?> push(BuildContext context, Widget page,
      {bool fullScreenDailog = false}) async {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
        fullscreenDialog: fullScreenDailog,
      ),
    );
  }
}

void pushRelacement(BuildContext context, Widget page) {
  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

  Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

void pushAndRemoveUntil(BuildContext context, Widget page) {
  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();

  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    (route) => false,
  );
}
