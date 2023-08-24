import 'package:flutter/material.dart';
import 'package:ride/dashboard/request_denied.dart';
import 'package:ride/notification_edit/settings_screen.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/route_navigator.dart';

import '../notification_edit/face_id/face_id.dart';
import '../notification_edit/notification.dart';

class FormationSgt extends StatelessWidget {
  const FormationSgt({
    required this.title,
    required this.imagePath,
    super.key,
  });
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenHeight(40)),
      child: Row(
        children: [
          Container(
            height: getScreenHeight(77),
            width: getScreenWidth(79),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            width: getScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Day !",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: getScreenHeight(26),
                    color: kDarkRed),
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: getScreenHeight(25),
                    color: kBLKCOLOUR),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Formation extends StatelessWidget {
  const Formation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(20), vertical: getScreenHeight(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen())),
              child: Image.asset('assets/images/q.jpg')),
          InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings())),
              child: Image.asset('assets/images/settings.jpg')),
        ],
      ),
    );
  }
}

class ContainerDetains extends StatelessWidget {
  const ContainerDetains({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(80),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.1))
          ]),
      child: Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: getScreenHeight(10), left: getScreenWidth(10)),
                    child: const ImageDocument(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(10),
                        vertical: getScreenHeight(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1st May - SAT - 2:00pm",
                          style: TextStyle(
                              fontSize: getScreenHeight(10),
                              color: kDarkRed,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Driver  License",
                          style: TextStyle(
                              fontSize: getScreenHeight(10),
                              color: kBLKCOLOUR,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/eyes.png'),
                            SizedBox(
                              width: getScreenHeight(getScreenWidth(5)),
                            ),
                            Image.asset('assets/images/wi.png'),
                            SizedBox(
                              width: getScreenHeight(getScreenWidth(5)),
                            ),
                            Image.asset('assets/images/wi2.png'),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FaceId())),
            child: Container(
              height: getScreenHeight(12),
              width: getScreenWidth(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kDarkRed,
              ),
              child: Center(child: Image.asset('assets/images/rename2.png')),
            ),
          )
        ],
      )),
    );
  }
}

class ImageDocument extends StatelessWidget {
  const ImageDocument({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kDarkRed,
      ),
      height: getScreenHeight(60),
      width: getScreenWidth(68),
      child: Center(
        child: Image.asset('assets/images/document.png'),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer(
      {super.key, required this.iconImage, required this.title});
  final String iconImage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: kWHTCOLOUR,
      ),
      height: getScreenHeight(30),
      width: getScreenWidth(130),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Image.asset(iconImage), Text(title)],
      ),
    );
  }
}

class RequestDetains extends StatelessWidget {
  const RequestDetains({
    required this.title,
    required this.title2,
    required this.imagePath,
    super.key,
  });
  final String title;
  final String title2;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(80),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.1))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: getScreenHeight(10), left: getScreenWidth(10)),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kWHTCOLOUR,
                        ),
                        height: getScreenHeight(60),
                        width: getScreenWidth(68),
                        child: Center(
                          child: Image.asset(imagePath),
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: getScreenHeight(10),
                            color: kDarkRed,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "NYPD",
                            style: TextStyle(
                                fontSize: getScreenHeight(10),
                                color: kBLKCOLOUR,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            title2,
                            style: TextStyle(
                                fontSize: getScreenHeight(10),
                                color: kBLKCOLOUR,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: getScreenHeight(15),
                            width: getScreenWidth(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kDarkRed),
                            child: const Center(
                              child: Text(
                                'Pending data',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 5,
                                    color: kWHTCOLOUR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          InkWell(
              onTap: () {
                RouteNavigators.route(context, const RequestDenied());
              },
              child: Container(
                height: getScreenHeight(19),
                width: getScreenWidth(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: kDarkRed),
                child: Image.asset('assets/images/eyewitness.png'),
              ))
        ],
      ),
    );
  }
}
