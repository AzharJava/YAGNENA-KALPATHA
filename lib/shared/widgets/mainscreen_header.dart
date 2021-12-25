import 'package:flutter/material.dart';
class MainScreenHeader extends StatelessWidget {
  const MainScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Name of Candidate  #"),
                      Text("skill"),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        child: Center(child: Text("Cindrlla")),
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("View 0")
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("#as mentioned by the client stated c title")
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("hbhh")
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("hbhh")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
