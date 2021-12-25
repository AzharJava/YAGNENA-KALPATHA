import 'package:flutter/material.dart';

class AppColors {
  static const Color homeScreenBackground = Color.fromRGBO(247, 251, 255, 1);
  static const Color example = Color.fromARGB(255, 255, 255, 255);
  static Color turquoiseBlue = _hexToColor("0a97b7");
  static const Color tealish = Color(0x5931c4c3);
  static const Color errorTextColor = Colors.red;
  static const Color leading_color = Colors.black;
  static const Color hintTextColor = Colors.grey;
  static const Color headingTextColor = Color(0x054c5c);
  static Color appBarColor = _hexToColor('bdefeb');
  static const Color dark_turquoise = Color(0xff054c5c);
  static Color heading = _hexToColor('0a97b7');
  static const Color primaryText = Colors.black;
  static const Color white = Colors.white;
  static Color grey = const Color(0xff707070);
  static Color tabActive = _hexToColor('bdefeb');
  static const Color editIconColor = Colors.blue;
  static Color tabInactive = Color.fromRGBO(189, 239, 235, 0.1);
  static Color hintLabel = _hexToColor('979797');
  static Color tabBorder = _hexToColor('31c4c3');
  static const Color homeScreenBackgroundWhite = Colors.white;
  static Color patientCardBorder = Color(0xffc1c1c1);
  static Color pinkishgrey = _hexToColor("c1c1c1");
  static Color iconContainerFiller1 = Color(0xffd6f0f3);
  static Color doctorCardHint = Color(0xffc1c1c1);
  static const Color doctorCardText = Color(0xff0a97b7);
  static Color device_heading = _hexToColor('054c5c');
  static Color tealish_Dark = _hexToColor('31c4c3');
  static Color pinkish_grey = _hexToColor("c1c1c1");
  static Color warm_grey = _hexToColor('979797');
  static Color onlineStatus = Color(0xff32c371);
  static const tealish_15 = const Color(0x2631c4c3);
  static const cornflower_blue_10 = const Color(0x1a5b91cf);
  static const cobalt = const Color(0xff1c518f);
  static const light_indigo_10 = const Color(0x1a744fc6);
  static const blue_purple = const Color(0xff4e28a1);
  static const butterscotch_10 = const Color(0x1afbb13c);
  static const butterscotch = const Color(0xfffbb13c);
  static const rusty_red_35_10 = const Color(0x1ad11614);
  static const red = Color(0xffbc1817);
  static Color cool_green = _hexToColor('32c371');
  static Color dark_blue_grey = _hexToColor('143138');
  static Color purple = _hexToColor('744fc6');
  static Color buttonbackgroundColor = Color(0xffbdefeb);
  static final themeColor = Color(0xfff5a623);
  static final primaryColor = Color(0xff203152);
  static final greyColor = Color(0xffaeaeae);
  static final greyColor2 = Color(0xffE8E8E8);
  static final greyColor3 = Color(0xffeaeaea);
  static final blueColor = Color(0xff0080ff);

  // appointments Colors
  static Color AUDIO_CALL = const Color(0xff4f86c6);
  static const HOSPITAl = const Color(0xfffbb13c);
  static const VIDEO_CALL = AppColors.tealish;
}

Color _hexToColor(String code) {
  return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
}