import 'package:flutter/material.dart';

import 'package:ride/data_model/text_model.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TextModel(
              title: 'ResetPassword',
              subTitle:
                  'Please enter your email address to request for password reset '),
          SizedBox(
            height: getScreenHeight(25),
          ),
        
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getScreenWidth(25), vertical: getScreenHeight(40)),
            height: getScreenHeight(58),
            width: getScreenWidth(271),
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ResetPassword2()));
              },
              backgroundColor: kPRYCOLOUR,
              child: Padding(
                padding: EdgeInsets.only(left: getScreenWidth(70)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "SEND",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: getScreenHeight(17),
                          color: kWHTCOLOUR),
                    ),
                    SizedBox(
                      width: getScreenWidth(30),
                    ),
                    Container(
                        height: getScreenHeight(30),
                        width: getScreenWidth(30),
                        decoration: BoxDecoration(
                          color: kDarkRed,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_sharp,
                          color: kWHTCOLOUR,
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
