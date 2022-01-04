import 'package:flutter/material.dart';

mixin BaseWidget {
  getEmptyAppBar() =>
      PreferredSize(child: Container(), preferredSize: Size(0, 0));
  buildBottomSheet(context, widget) {
    //showModalBottomSheet(context: context, builder: (context)=> Padding(p))
  }
}
