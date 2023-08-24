// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

//import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:ride/componet/verificatio_model/signup_screen.dart';
import 'package:ride/dashboard/dashboard.dart';

import 'package:ride/data_model/text_model.dart';
import 'package:ride/resetpassword/resetpassword.dart';
import 'package:ride/utils/app_color.dart';

import 'package:ride/utils/validator.dart';

import '../../../utils/dimention.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool value = false;

  bool theme = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getScreenHeight(80),
              ),
              Image.asset('assets/images/ride.png'),
              Center(
                child: Text(
                  'RIDE',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: getScreenHeight(30),
                      color: kBLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'Revolution I-Denity Elusion',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: getScreenHeight(5),
                    color: kBLKCOLOUR),
                textAlign: TextAlign.center,
              ),
               Row(children: [
                TextModel(title: 'Sign in', subTitle: ''),
              ]),
              RideText(
                title: 'abc@gmail.com',
                iconImage: 'assets/images/mail.png',
                validator: (p0) => Validator.validateEmail(p0 ?? ''),
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              RideText(
                title: 'Confirmed Password',
                iconImage: 'assets/images/lock.png',
                validator: (p0) => Validator.validatePassword(p0 ?? ''),
              ),
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Switch(
                      value: value,
                      onChanged: (onChanged) {
                        setState(() {
                          value = onChanged;
                        });
                      },
                      activeColor: kPRYCOLOUR,
                      inactiveTrackColor: kPRYCOLOUR,
                      inactiveThumbColor: kWHTCOLOUR,
                    ),
                    Text(
                      'Remember me',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: getScreenHeight(14),
                          color: kBLKCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: getScreenWidth(20),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => const ResetPassword())),
                      child: Row(
                        children: [
                          Text(
                            'Forget Password?',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: getScreenHeight(14),
                                    color: kBLKCOLOUR),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenHeight(22)),
                child: SizedBox(
                  height: getScreenHeight(58),
                  width: getScreenWidth(271),
                  child: FloatingActionButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashBoard()));
                      }
                    },
                    backgroundColor: kPRYCOLOUR,
                    child: Padding(
                      padding: EdgeInsets.only(left: getScreenWidth(70)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "LOGIN",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}
