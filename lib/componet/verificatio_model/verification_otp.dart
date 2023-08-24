import 'package:flutter/material.dart';
import 'package:ride/componet/entry_filed.dart';
import 'package:ride/componet/verificatio_model/verifiy_confirm.dart';
import 'package:ride/data_model/text_model.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
   final verifyFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenHeight(30)),
        child: SafeArea(
          child: Form(
            
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyConfirm()));
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
                const TextBotton(
                  title: 'Re-send Code in ',
                  subTitle: '0.20',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextBotton extends StatelessWidget {
  const TextBotton({
    required this.title,
    required this.subTitle,
    super.key,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(title, style: const TextStyle(fontSize: 20)),
        SizedBox(
          width: getScreenWidth(5),
        ),
        Text(subTitle, style: const TextStyle(fontSize: 20, color: kGreen)),
      ],
    );
  }
}
