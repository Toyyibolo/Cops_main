import 'package:flutter/material.dart';
import 'package:ride/componet/verificatio_model/signup_screen.dart';
import 'package:ride/componet/verificatio_model/verification_otp.dart';

import 'package:ride/data_model/text_model.dart';
import 'package:ride/utils/app_color.dart';

import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/validator.dart';

class MailLogin extends StatefulWidget {
  const MailLogin({super.key});

  @override
  State<MailLogin> createState() => _MailLoginState();
}

class _MailLoginState extends State<MailLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailAddress = TextEditingController();
  bool isEmailCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getScreenHeight(30)),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getScreenHeight(60),
                      ),
                      const TextModel(
                        title: 'Sign up',
                        subTitle:
                            'Please enter your mail address to get verified ',
                      ),
                      SizedBox(
                        height: getScreenHeight(20),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getScreenHeight(14)),
                        child: RideText(
                            title: 'Email Address',
                            iconImage: 'assets/images/mail.png',
                            validator: (p0) =>
                                Validator.validateEmail(p0 ?? '')),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getScreenWidth(25),
                            vertical: getScreenHeight(40)),
                        height: getScreenHeight(58),
                        width: getScreenWidth(271),
                        child: FloatingActionButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                                if (mounted) {
                                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VerificationPage()));
                              }
                            }
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const VerificationPage()));
                          },
                          backgroundColor: kPRYCOLOUR,
                          child: Padding(
                            padding: EdgeInsets.only(left: getScreenWidth(70)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "SEND",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
