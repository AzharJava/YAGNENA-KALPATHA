import 'package:flutter/material.dart';
import 'package:yagnena_kalpatha/constants/colors.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: MediaQuery.of(context).size.width,
      color: AppColors.grey,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://www.desicomments.com/dc3/19/438872/438872.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .10,
            left: MediaQuery.of(context).size.width * .85,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            left: MediaQuery.of(context).size.width * .85,
            child: FloatingActionButton(
              onPressed: () {},
              child: Text("P"),
            ),
          )
        ],
      ),
    );
  }
}
