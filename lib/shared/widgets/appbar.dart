import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.butterscotch,
      height: 100,
      width: MediaQuery.of(context).size.width * 0.29,
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(child: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.upload_sharp)),
              CircleAvatar(
                radius: 10,
                backgroundColor: AppColors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
