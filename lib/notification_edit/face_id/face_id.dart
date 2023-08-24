import 'package:flutter/material.dart';

import 'package:ride/dashboard/dashord_detain.dart';
import 'package:ride/utils/dimention.dart';

class FaceId extends StatelessWidget {
  const FaceId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: getScreenHeight(200)),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/faceid.png'),
              SizedBox(
                height: getScreenHeight(10),
              ),
              InkWell(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DashBoardDetain(),)),
                child: const Text(
                  'Face Id',
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
