import 'dart:convert';
import 'dart:io';

//import 'package:get_nearby_user_logic/api/all_user._model.dart';
import "package:http/http.dart" as http;
//import 'package:http/http.dart';

class Authentication {
  static sendVerification(String email) async {
    Map<String, dynamic> userEmail = {"email": email};

    final url =
        Uri.parse("https://api.useriderapp.com/api/v1/cops/sendverification");
    final response = await http.post(url, body: userEmail);
    final jsonbody = response.body;
    final body = json.decode(jsonbody);
    print(body);
  }

  static otpVerification(double otp) async {
    Map<String, dynamic> userOtp = {"otp": otp};

    final url =
        Uri.parse("https://api.useriderapp.com/api/v1/cops/otp/verification");
    final response = await http.post(url, body: userOtp);
    final jsonbody = response.body;
    final body = json.decode(jsonbody);
    print(body);
  }

  static Login(String email, String password) async {
    Map<String, dynamic> userLogin = {"email": email, "password": password};

    final url = Uri.parse("https://api.useriderapp.com/api/v1/login");
    final response = await http.post(url, body: userLogin);
    final jsonbody = response.body;
    final body = json.decode(jsonbody);
    print(body);
  }
}
