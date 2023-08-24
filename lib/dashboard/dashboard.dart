// import 'dart:async';

import 'package:flutter/material.dart';

import 'package:ride/dashboard/pending_dashboard.dart';
import 'package:ride/dashboard/request_data.dart';
import 'package:ride/dashboard/request_denied.dart';
import 'package:ride/model_conbine/model_cobine.dart';

// import 'package:flutter_p2p_plus/flutter_p2p_plus.dart';
// import 'package:flutter_p2p_plus/protos/protos.pbserver.dart';
import 'package:ride/notification_edit/face_id/face_id.dart';
import 'package:ride/notification_edit/notification.dart';
import 'package:ride/notification_edit/settings_screen.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/route_navigator.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
//   const DashBoard({super.key});
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
                InkWell(
                  onTap: () {
                    RouteNavigators.route(context, const PendingDashboard());
                  },
                  child: Text(
                    "Drivers nearby ",
                    style: TextStyle(fontSize: getScreenHeight(15)),
                  ),
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
            SizedBox(
              height: getScreenHeight(10),
            ),
            const RequestDetains(
              title: 'JOSEPH ALLEN',
              title2: 'GNX 5261  21M',
              imagePath: 'assets/images/person.png',
            ),
            SizedBox(
              height: getScreenHeight(10),
            ),
            const RequestDetains(
              title: 'JOSEPH ALLEN',
              title2: 'GNX 5261  21M',
              imagePath: 'assets/images/person.png',
            ),
            SizedBox(
              height: getScreenHeight(10),
            ),
            const RequestDetains(
              title: 'JOSEPH ALLEN',
              title2: 'GNX 5261  21M',
              imagePath: 'assets/images/person.png',
            )
          ],
        ),
      ),
    ]));
  }
}

class AcceptRequest extends StatelessWidget {
  const AcceptRequest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(20), vertical: getScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              RouteNavigators.route(context, const RequestData());
            },
            child: const IconContainer(
              iconImage: 'assets/images/direction.png',
              title: 'Accept Request',
            ),
          ),
          const IconContainer(
            iconImage: 'assets/images/wifi.png',
            title: 'Share',
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: kWHTCOLOUR,
            ),
            height: getScreenHeight(30),
            width: getScreenWidth(60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/threedot.png'),
                const Text('')
              ],
            ),
          )
        ],
      ),
    );
  }
}

