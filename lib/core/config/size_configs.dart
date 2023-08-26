import 'package:flutter/material.dart';

class SizeConfigProvider {
  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  double? blockSizeHorizontal;
  double? blockSizeVertical;
  late double _safeAreaHorizontal;
  late double _safeAreaVertical;
  double? safeWidth;
  double? safeHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeWidth = (screenWidth - _safeAreaHorizontal) / 100;
    safeHeight = (screenHeight - _safeAreaVertical) / 100;
  }
}

SizeConfigProvider sizeConfig = SizeConfigProvider();
