
class UserEmailSendVerification {
  final String email;

  UserEmailSendVerification({
    required this.email,
  });

  factory UserEmailSendVerification.fromJson(Map<String, dynamic> json) {
    return UserEmailSendVerification(
        email: json['email'],
        );
  }
}

class OtpVerification {
  final double pin;

  OtpVerification({
    required this.pin,
  });

  factory  OtpVerification.fromJson(Map<String, dynamic> json) {
    return  OtpVerification(
        pin: json['pin'],
        );
  }
}

class Login {
  final String email;
  final String password;

  Login({
    required this.email,
    required this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
        email: json['email'], password: json['password']
        );
  }
}

class ForgetPassword{
  final String email;
  

  ForgetPassword({
    required this.email,
   
  });

  factory ForgetPassword.fromJson(Map<String, dynamic> json) {
    return ForgetPassword(
        email: json['email']
        );
  }
}

class ResetPassword{
  final String email;
  final String password;

  ResetPassword({
    required this.email,
    required this.password,
  });

  factory ResetPassword.fromJson(Map<String, dynamic> json) {
    return ResetPassword(
        email: json['email'], password: json['password']
        );
  }
}
