import 'package:flutter/material.dart';
import 'package:ride/dashboard/share_qrcode.dart';
//import 'package:flutter_blue/flutter_blue.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/route_navigator.dart';

import 'bluetooth.dart';

class ShareDocumentScreen extends StatefulWidget {
  const ShareDocumentScreen({super.key});

  @override
  State<ShareDocumentScreen> createState() => _ShareDocumentScreenState();
}

class _ShareDocumentScreenState extends State<ShareDocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getScreenHeight(50),
          ),
          BigCircleButton(
            onTap: () {
              RouteNavigators.route(
                context,
                const BluetoothScreen(),
              );
            },
            title: 'Connect via bluetooth',
          ),
          SizedBox(
            height: getScreenHeight(50),
          ),
          BigCircleButton(
            onTap: () {
              // RouteNavigators.route(
              //   context,
              //   const ScanQRCodeScreen(),
              //);
            },
            title: 'Use QRcode',
          ),
        ],
      ),
    );
  }
}

class BigCircleButton extends StatelessWidget {
  const BigCircleButton({
    super.key,
    required this.onTap,
    required this.title,
  });
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Container(
          width: getScreenHeight(150),
          height: getScreenHeight(160),
          decoration: ShapeDecoration(
            color: kPRYCOLOUR,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getScreenHeight(80)),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x16000000),
                blurRadius: 14,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: getScreenHeight(16),
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
