import 'package:flutter/material.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class RequestDenied extends StatefulWidget {
  const RequestDenied({super.key});

  @override
  State<RequestDenied> createState() => _RequestDeniedState();
}

class _RequestDeniedState extends State<RequestDenied> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Notification',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w400, fontSize: 22, color: kPRYCOLOUR),
            ),
            SizedBox(
              height: getScreenHeight(200),
            ),
            Image.asset('assets/images/art.png'),
            Text(
              'Request Denied',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w400, fontSize: 18, color: kLightGray),
            ),
            SizedBox(
              height: getScreenHeight(19),
            ),
            Image.asset('assets/images/description.png'),
          ],
        ),
      ),
    );
  }
}