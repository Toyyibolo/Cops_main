import 'package:flutter/material.dart';
import 'package:ride/componet/verificatio_model/longin_creen/login_screen.dart';

import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: getScreenHeight(854),
        width: getScreenWidth(393),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/driver.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: getScreenHeight(120),
            ),
            Image.asset('assets/images/ride.png'),
            Text(
              'RIDE',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: getScreenHeight(30),
                  color: kBLKCOLOUR),
              textAlign: TextAlign.center,
            ),
            Text(
              'Revolution I-Denity Elusion',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: getScreenHeight(5),
                  color: kBLKCOLOUR),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Container(
              height: getScreenHeight(209),
              width: getScreenWidth(393),
              decoration: BoxDecoration(
                color: kWHTCOLOUR,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenHeight(40)),
                child: Column(
                  children: [
                    SizedBox(
                      height: getScreenHeight(20),
                    ),
                    Text(
                      'By tapping sign in/ create account, you agree to our Terms of Services.Learn how to process data in our private policy and Cookies policy',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: getScreenHeight(12),
                          color: kBLKCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                    const CustomButton(),
                    // InkWell(
                    //   onTap: () => Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => LoginScreen())),
                    //   child: Text(
                    //     'Sign in',
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .displaySmall!
                    //         .copyWith(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: getScreenHeight(20),
                    //             color: kBLKCOLOUR),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(40),
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        backgroundColor: kPRYCOLOUR,
        child: Text(
          "Getting Started ",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: getScreenHeight(14),
              color: kWHTCOLOUR),
        ),
      ),
    );
  }
}


// class EmailLogin extends StatefulWidget {
//   EmailLogin n({super.key});

//   @override
//   State<EmailLogin > createState() => _EmailLoginState();
// }

// class _EmailLoginState extends State<EmailLogin > {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//        SafeArea(
//         child: Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                  SizedBox(
//                   height: getScreenHeight(25),
//                 ),
//                 Text(
//                   'Sign up',
//                   style: Theme.of(context).textTheme.headline3!.copyWith(
//                       fontWeight: FontWeight.w600,
//                       fontSize: getScreenHeight(25),
//                       color: kBLKCOLOUR),
//                 ),
//                 SizedBox(
//                   height: getScreenHeight(20),
//                 ),
//                 Text(
//                   'Pls enter your email address  to got verified ',
//                   style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                       fontWeight: FontWeight.w400,
//                       fontSize: getScreenHeight(19),
//                       color: kBLKCOLOUR),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:ride/utils/dimention.dart';

// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({super.key});

//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: getScreenHeight(854),
//         width: getScreenWidth(393),
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/police.png'),
//                 )),
//       ),
//     );
//   }
//}
