import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';
import 'package:yagnena_kalpatha/shared/widgets/appbar.dart';
import 'package:yagnena_kalpatha/shared/widgets/bottom_navigaion.dart';
import 'package:yagnena_kalpatha/shared/widgets/home_screen.dart';
import 'package:yagnena_kalpatha/shared/widgets/mainscreen_header.dart';
import 'package:yagnena_kalpatha/shared/widgets/post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigation(),
        appBar: AppBar(
          backgroundColor: AppColors.butterscotch,
          title: Text(
            "Yagnena Kalpatha @",
            style:
                TextStyle(fontFamily: "Helvetica", fontWeight: FontWeight.w500),
          ),
          actions: [AppBars()],
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, int index) => PostDisplay()));
  }
}
