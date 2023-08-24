import 'package:flutter/material.dart';
import 'package:ride/dashboard/dashboard.dart';
import 'package:ride/model_conbine/model_cobine.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class DashBoardDetain extends StatefulWidget {
  const DashBoardDetain({super.key});

  @override
  State<DashBoardDetain> createState() => _DashBoardDetainState();
}

class _DashBoardDetainState extends State<DashBoardDetain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: getScreenHeight(234),
        width: getScreenWidth(393),
        color: kBorderLineColor,
        child: Column(children: [
          Formation(),
          FormationSgt(
            title: 'Joseph',
            imagePath: 'assets/images/person.png',
          ),
          AcceptRequest()
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Documents",
              style: TextStyle(fontSize: getScreenHeight(20)),
            ),
            SizedBox(
              height: getScreenHeight(20),
            ),
            const ContainerDetains(),
          ],
        ),
      ),
    ]));
  }
}
