import 'package:flutter/material.dart';
import 'package:ride/authentication/authentication_api.dart';
import 'package:ride/componet/entry_filed.dart';
import 'package:ride/componet/verificatio_model/signup_screen.dart';
import 'package:ride/componet/verificatio_model/verification_otp.dart';
import 'package:ride/data_model/text_model.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class VerifyConfirm extends StatefulWidget {
  const VerifyConfirm({super.key});

  @override
  State<VerifyConfirm> createState() => _VerifyConfirmState();
}

class _VerifyConfirmState extends State<VerifyConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenHeight(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getScreenHeight(10),
            ),
            const TextModel(
              title: 'Verification',
              subTitle:
                  'We have send you the verification code on abc@gmail.com',
            ),
            SizedBox(
              height: getScreenHeight(30),
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntryFiled(),
                EntryFiled(),
                EntryFiled(),
                EntryFiled(),
              ],
            )),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(25),
                  vertical: getScreenHeight(40)),
              height: getScreenHeight(58),
              width: getScreenWidth(271),
              child: FloatingActionButton(
                onPressed: () {
                  Authentication.otpVerification(0123);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                backgroundColor: kPRYCOLOUR,
                child: Padding(
                  padding: EdgeInsets.only(left: getScreenWidth(70)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "continue",
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
            Container(
                height: getScreenHeight(40),
                width: getScreenWidth(271),
                decoration: BoxDecoration(
                  color: kGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: getScreenHeight(7)),
                      child: Text(
                        'Email Verified Successful',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: getScreenHeight(17),
                                color: kWHTCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
            const TextBotton(
              title: 'Re-send Code in ',
              subTitle: '0.20',
            ),
          ],
        ),
      ),
    );
  }
}
