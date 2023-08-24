import 'package:flutter/material.dart';

class RequestData extends StatefulWidget {
  const RequestData({super.key});

  @override
  State<RequestData> createState() => _RequestDataState();
}

class _RequestDataState extends State<RequestData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset('assets/images/ve2.png'),
            Image.asset('assets/images/vei.png'),
            const Text(
              'Request Data',
              style: TextStyle(fontSize: 23),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
