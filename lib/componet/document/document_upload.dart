import 'package:flutter/material.dart';
import 'package:ride/dashboard/dashboard.dart';
import 'package:ride/model_conbine/model_cobine.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class Document extends StatefulWidget {
  const Document({super.key});

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kgray,
      body: Column(
        children: [
          Container(
              color: kWHTCOLOUR,
              height: getScreenHeight(173),
              width: getScreenWidth(393),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(15),
                        vertical: getScreenWidth(24)),
                    child: Row(
                      children: [Icon(Icons.arrow_back_ios_new_outlined)],
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageDocument(),
                      SizedBox(
                        width: getScreenWidth(15),
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Driver License!',
                            style: TextStyle(
                                color: kDarkRed,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            '1st of may -sat 2:00pm',
                            style: TextStyle(
                                color: kBLKCOLOUR,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: getScreenHeight(15),
          ),
          Image.asset('assets/images/card.png'),
          SizedBox(
            height: getScreenHeight(15),
          ),
          Image.asset('assets/images/card.png'),
          SizedBox(
            height: getScreenHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconContainer(iconImage: 'assets/images/wi.png', title: 'wifi'),
              IconContainer(
                  iconImage: 'assets/images/delete.png', title: 'Delete')
            ],
          ),
        ],
      ),
    );
  }
}
