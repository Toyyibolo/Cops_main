import 'package:flutter/material.dart';

import 'package:ride/onboarding_page/screen/welcome.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      controller: controller,
      itemCount: 3,
      itemBuilder: (context, index) => OnboardingContent(
        imagepath: demo_data[index].imagepath,
        title1: demo_data[index].title1,
        title2: demo_data[index].title2,
        title3: demo_data[index].title3,
      ),
    ));
  }
}

class Onboard {
  final String imagepath, title1, title2, title3;

  Onboard(
      {required this.imagepath,
      required this.title1,
      required this.title2,
      required this.title3});
}

// ignore: non_constant_identifier_names
final List<Onboard> demo_data = [
  Onboard(
    imagepath: 'assets/images/phonef.png',
    title1: 'Welcome to our revolutionary onboarding process!',
    title2:
        'Empower your right with R.I.D.E, Where we enforce your electronic legal warning right during traffic stops',
    title3: 'skip',
  ),
  Onboard(
    imagepath: 'assets/images/police.png',
    title1: 'Say good by to direct contact with police officers',
    title2:
        'No more unnecessary law interaction with law enforcement officers - R.I.D.E, changes the game ',
    title3: 'skip',
  ),
  Onboard(
    imagepath: 'assets/images/earphone.png',
    title1: 'Effortless and Secure file  Transfer',
    title2:
        'With just simple tap of a button, secure and send personal information to police through our wireless file, transfer feature, Your data and your control  ',
    title3: 'skip',
  ),
];

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.imagepath,
    super.key,
  });
  final String title1;
  final String title2;
  final String title3;
  final String imagepath;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(894),
      width: getScreenWidth(393),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagepath), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          const Spacer(),
          Container(
            height: getScreenHeight(293),
            width: getScreenWidth(393),
            decoration: BoxDecoration(
              color: kWHTCOLOUR,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  SizedBox(
                    height: getScreenHeight(10),
                  ),
                  Row(
                    children: [Icon(Icons.arrow_back_ios_new_outlined)],
                  ),
                  SizedBox(
                    height: getScreenHeight(14),
                  ),
                  Text(
                    title1,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: kPRYCOLOUR),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    title2,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenHeight(16),
                        color: kBLKCOLOUR),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   'skip',
                      //   style: Theme.of(context).textTheme.headline3!.copyWith(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 22,
                      //       color: kPRYCOLOUR),
                      // ),
                      TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'skip',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getScreenHeight(22),
                                    color: kPRYCOLOUR),
                          )),
                      // SizedBox(
                      //   // alignment: const Alignment(0,0) ,
                      //   height: 10.0,
                      //   child: ListView.builder
                      //       //  controller: _controller,
                      //       itemCount: 3,
                      //       shrinkWrap: true,
                      //       scrollDirection: Axis.horizontal,
                      //       itemBuilder: (_, index) {
                      //         return Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Container(
                      //               margin: const EdgeInsets.symmetric(
                      //                   horizontal: 3.0),
                      //               width: 8.0,
                      //               height: 8.0,
                      //               decoration: BoxDecoration(
                      //                   color: kPRYCOLOUR,
                      //                   borderRadius:
                      //                       BorderRadius.circular(10.0)),
                      //             ),
                      //           ],
                      //         );
                      //       }),
                      // ),
                      Center(
                        child: SmoothPageIndicator(
                          axisDirection: Axis.horizontal,
                          controller: PageController(),
                          count: 3,
                        ),
                      ),

                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (contex) => const WelcomeScreen()));
                              },
                              child: Text(
                                'Next',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: getScreenHeight(22),
                                        color: kPRYCOLOUR),
                              )),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kPRYCOLOUR,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




























   // Row(
                  //   children:  List.generate(
                  //       3,
                  //       (index) => Container(
                  //             height: 10,
                  //             width: 10,
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(20),
                  //                 color: kPRYCOLOUR),
                  //           )), 
                 // )
                  // Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: getScreenWidth(15)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       const Text('Skip'),
                  //       Row(
                  //           children: List.generate(
                  //               3,
                  //               (index) => Container(
                  //                     height: 10,
                  //                     width: 10,
                  //                     color: kPRYCOLOUR,
                  //                     decoration: BoxDecoration(
                  //                         borderRadius:
                  //                             BorderRadius.circular(20)),
                  //                   ))),
                  //       const Row(
                  //         children: [
                  //           Text('Next'),
                  //           Icon(Icons.arrow_forward_ios_outlined)
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // )