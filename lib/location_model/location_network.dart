import 'dart:convert';
import 'dart:io';

//import 'package:get_nearby_user_logic/api/all_user._model.dart';
import "package:http/http.dart" as http;
//import 'package:http/http.dart';

class UsersApi {
  static addUsersLocation(String latitude, String longitude) async {
    Map<String, dynamic> userLocation = {
      "latitude": latitude,
      "longitude": longitude
    };

    final url = Uri.parse(
        "https://api.useriderapp.com/api/v1/data/64e2015a53743857f0d95cb7");
    final response = await http.post(url, body: userLocation);
    final jsonbody = response.body;
    final body = json.decode(jsonbody);
    print(body);
  }

  // static updateUsersLocation(double latitude, double longitude) async {
  //   Map<String, dynamic> userLocation = {
  //     "name": "username",
  //     "latitude": latitude,
  //     "longitude": longitude
  //   };

  //   final url = Uri.parse(
  //       "http://localhost:3006/api/v1/cops/nearby/64e36578a00b224d3c60c589");
  //   final response = await http.put(url, body: userLocation);
  //   final jsonbody = response.body;
  //   final body = json.decode(jsonbody);
  //   print(body);
  // }
}
