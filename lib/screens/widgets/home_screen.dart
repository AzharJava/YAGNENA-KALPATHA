import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.upload)),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
