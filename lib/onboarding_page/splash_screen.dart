import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ride/onboarding_page/onboarding_page.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';
import 'package:ride/utils/route_navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'splash.screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initialAction();
    super.initState();
  }

  Future<Timer> initialAction() async {
    return Timer(
      const Duration(seconds: 3),
      () {
        RouteNavigators.routeReplace(context, const OnboardingPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: kWHTCOLOUR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: _animation,
              child: Image.asset("assets/images/ride.png")),
          SizedBox(
            height: getScreenHeight(20),
          ),
       Image.asset("assets/images/revo.png") ],
     ),
    );
  }
}
