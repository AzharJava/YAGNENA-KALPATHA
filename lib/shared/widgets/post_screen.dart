import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      color: AppColors.grey,
      child: Image.network(
          "https://www.desicomments.com/dc3/19/438872/438872.jpg"),
    );
  }
}
