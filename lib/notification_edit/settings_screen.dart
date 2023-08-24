import 'package:flutter/material.dart';
import 'package:ride/componet/verificatio_model/longin_creen/login_screen.dart';
import 'package:ride/dashboard/dashboard.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kgray,
      body: Column(
        children: [
          Container(
            color: kWHTCOLOUR,
            height: getScreenHeight(300),
            width: getScreenWidth(400),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getScreenWidth(20),
                      vertical: getScreenWidth(40)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBoard())),
                        child: const Icon(Icons.arrow_back_ios_new_outlined)),
                      const Text(
                        'Edit profile',
                        style: TextStyle(color: kPRYCOLOUR),
                      )
                    ],
                  ),
                ),
                Container(
                  height: getScreenHeight(77),
                  width: getScreenWidth(79),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/police.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  'Sgt. William SyLa',
                  style: TextStyle(
                      color: kBLKCOLOUR, fontSize: getScreenHeight(14)),
                ),
                Text(
                  '+1599340204',
                  style: TextStyle(
                      color: kLightGray, fontSize: getScreenHeight(14)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/star.png'),
                    Row(
                      children: [
                        Text(
                          '4.21',
                          style: TextStyle(
                              color: kLightGray, fontSize: getScreenHeight(14)),
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                              color: kLightGray, fontSize: getScreenHeight(14)),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getScreenHeight(20),
                      vertical: getScreenHeight(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/mail.png'),
                          Text(
                            'willian.syla@gmail.com',
                            style: TextStyle(fontSize: getScreenHeight(14)),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: getScreenHeight(10),
            thickness: 1,
          ),
          const Details(
            iconImage: 'assets/images/request.png',
            title: 'Request data ',
          ),
          Divider(
            height: getScreenHeight(10),
            thickness: 0,
          ),
          const Details(
            iconImage: 'assets/images/darkmode.png',
            title: 'Data Mode',
          ),
          Divider(
            height: getScreenHeight(10),
            thickness: 0,
          ),
          const Details2(
            title: 'Rate the app',
          ),
          Divider(
            height: getScreenHeight(10),
            thickness: 0,
          ),
          const Details2(
            title: 'Communication Preference',
          ),
          InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: const Details(
                  iconImage: 'assets/images/logout.png', title: 'logout')),
          Divider(
            height: getScreenHeight(2),
            thickness: 0,
          ),
          const Details(
              iconImage: 'assets/images/delete.png', title: 'Delete account')
        ],
      ),
    );
  }
}

class Details2 extends StatelessWidget {
  const Details2({
    required this.title,
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWHTCOLOUR,
      height: getScreenHeight(70),
      width: getScreenWidth(370),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: getScreenHeight(14)),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    required this.iconImage,
    required this.title,
    super.key,
  });
  final String iconImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWHTCOLOUR,
      height: getScreenHeight(82),
      width: getScreenWidth(370),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(iconImage),
                SizedBox(
                  width: getScreenWidth(10),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: getScreenHeight(14)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class ImageWidget extends StatelessWidget {
//   const ImageWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: getScreenHeight(77),
//       width: getScreenWidth(79),
//       decoration: BoxDecoration(
//           image: const DecorationImage(
//               image: AssetImage('assets/images/person.png'), fit: BoxFit.cover),
//           borderRadius: BorderRadius.circular(10)),
//     );
//   }
// }















  //  body: Column(children: [
  //     Container(
  //         height: getScreenHeight(150),
  //         decoration: BoxDecoration(color: Colors.white, boxShadow: [
  //           BoxShadow(blurRadius: 9, color: Colors.black.withOpacity(0.1))
  //         ]),
  //         child: const Row(
  //           children: [Icon(Icons.arrow_back_ios_new)],
  //         ))
  //   ]));