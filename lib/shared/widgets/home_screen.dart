import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/shared/widgets/mainscreen_header.dart';
import 'package:yagnena_kalpatha/shared/widgets/post_screen.dart';

class PostDisplay extends StatelessWidget {
  const PostDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MainScreenHeader(),
        PostScreen(),
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.link),
              Icon(Icons.share),
              Icon(Icons.comment),
              Icon(Icons.link),
              Icon(Icons.link),
            ],
          ),
        )
      ],
    );
  }
}
