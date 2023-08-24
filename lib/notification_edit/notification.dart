import 'package:flutter/material.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              'No Notification !',
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
