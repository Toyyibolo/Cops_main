import 'package:flutter/material.dart';
import 'package:ride/dashboard/dashboard.dart';
import 'package:ride/model_conbine/model_cobine.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class PendingDashboard extends StatefulWidget {
  const PendingDashboard({super.key});

  @override
  State<PendingDashboard> createState() => _PendingDashboardState();
}

class _PendingDashboardState extends State<PendingDashboard> {
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
            title: 'Sgt.williams',
            imagePath: 'assets/images/police.jpg',
          ),
          AcceptRequest()
        ]),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Drivers nearby ",
                  style: TextStyle(fontSize: getScreenHeight(15)),
                ),
                Text(
                  "Pending Request ",
                  style: TextStyle(fontSize: getScreenHeight(15)),
                ),
              ],
            ),
            SizedBox(
              height: getScreenHeight(10),
            ),
            const RequestDetains(
              title: 'JOSEPH ALLEN',
              title2: 'GNX 5261  21M',
              imagePath: 'assets/images/person.png',
            ), 
           
          ],
        ),
      ),
    ])

    );
  }
}