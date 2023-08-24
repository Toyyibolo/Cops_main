import 'package:flutter/material.dart';
import 'package:ride/location_model/location_network.dart';

import 'package:ride/onboarding_page/splash_screen.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Position? position;
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    super.initState();
    fetchposition();
  }

  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showMessage('location service is disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showMessage('you denied the permission');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      showMessage('you denied the permission forever');
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;
      latitude = currentPosition.latitude;
      longitude = currentPosition.longitude;
    });
    print(latitude.toString());
    print(longitude.toString());
    UsersApi.addUsersLocation(latitude.toString(), longitude.toString());
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
  showMessage(String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
