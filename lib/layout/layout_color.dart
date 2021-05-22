import 'package:flutter/material.dart';

class LayoutColor {
  static MaterialColor primaryColor = MaterialColor(0xff3b3c7d, blueBaratao);

  //MaterialColor(0xff3b3c7d, blueBaratao)
  static int _rpb = 59; // red primary baratao
  static int _gpb = 60; // green primary baratao
  static int _bpb = 125; // blue primary baratao
  static Map<int, Color> blueBaratao = // tonalidades de cor
      {
    50: Color.fromRGBO(_rpb, _gpb, _bpb, .1),
    100: Color.fromRGBO(_rpb, _gpb, _bpb, .2),
    200: Color.fromRGBO(_rpb, _gpb, _bpb, .3),
    300: Color.fromRGBO(_rpb, _gpb, _bpb, .4),
    400: Color.fromRGBO(_rpb, _gpb, _bpb, .5),
    500: Color.fromRGBO(_rpb, _gpb, _bpb, .6),
    600: Color.fromRGBO(_rpb, _gpb, _bpb, .7),
    700: Color.fromRGBO(_rpb, _gpb, _bpb, .8),
    800: Color.fromRGBO(_rpb, _gpb, _bpb, .9),
    900: Color.fromRGBO(_rpb, _gpb, _bpb, 1),
  };

  static MaterialColor secondaryColor =
      MaterialColor(0xfff9e011, yellowBaratao);

  //MaterialColor(0xfff9e011, yellowBaratao)
  static int _rsb = 249; // red secondary
  static int _gsb = 224; // green secondary
  static int _bsb = 17; // blue secondary
  static Map<int, Color> yellowBaratao = // toms de cor
      {
    50: Color.fromRGBO(_rsb, _gsb, _bsb, .1),
    100: Color.fromRGBO(_rsb, _gsb, _bsb, .2),
    200: Color.fromRGBO(_rsb, _gsb, _bsb, .3),
    300: Color.fromRGBO(_rsb, _gsb, _bsb, .4),
    400: Color.fromRGBO(_rsb, _gsb, _bsb, .5),
    500: Color.fromRGBO(_rsb, _gsb, _bsb, .6),
    600: Color.fromRGBO(_rsb, _gsb, _bsb, .7),
    700: Color.fromRGBO(_rsb, _gsb, _bsb, .8),
    800: Color.fromRGBO(_rsb, _gsb, _bsb, .9),
    900: Color.fromRGBO(_rsb, _gsb, _bsb, 1),
  };

  static MaterialColor backgroundColor = MaterialColor(0xfffefdf9, paleMarket);

  //MaterialColor(0xfffefdf9, paleMarket)
  static int _rb = 254; // red background
  static int _gb = 253; // green background
  static int _bb = 249; // blue background
  static Map<int, Color> paleMarket = // toms de cor
      {
    50: Color.fromRGBO(_rb, _gb, _bb, .1),
    100: Color.fromRGBO(_rb, _gb, _bb, .2),
    200: Color.fromRGBO(_rb, _gb, _bb, .3),
    300: Color.fromRGBO(_rb, _gb, _bb, .4),
    400: Color.fromRGBO(_rb, _gb, _bb, .5),
    500: Color.fromRGBO(_rb, _gb, _bb, .6),
    600: Color.fromRGBO(_rb, _gb, _bb, .7),
    700: Color.fromRGBO(_rb, _gb, _bb, .8),
    800: Color.fromRGBO(_rb, _gb, _bb, .9),
    900: Color.fromRGBO(_rb, _gb, _bb, 1),
  };

  static MaterialColor textBlack = MaterialColor(0xff090101, blackMarket);
  static int _rt = 9; // red background
  static int _gt = 1; // green background
  static int _bt = 1; // blue background
  static Map<int, Color> blackMarket = {
    900: Color.fromRGBO(_rt, _gt, _bt, 1),
  };
}
