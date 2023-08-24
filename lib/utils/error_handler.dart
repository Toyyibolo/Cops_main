import 'dart:io';
import 'package:dio/dio.dart';

class NetworkExceptions {
  static String getDioException(error) {
    if (error is Exception) {
      try {
        // ignore: deprecated_member_use
        if (error is DioError) {
          switch (error.type) {
            // ignore: deprecated_member_use
            case DioErrorType.cancel:
              return 'Request cancelled';

            // ignore: deprecated_member_use
            case DioErrorType.receiveTimeout:
              return 'Request timed out';
            // ignore: deprecated_member_use
            case DioErrorType.badResponse:
              if (error.response!.data['message'] is List) {
                return error.response!.data['message'][0];
              }
              return error.response!.data['message'];
            // ignore: deprecated_member_use
            case DioErrorType.sendTimeout:
              return 'Request timed out';
            // ignore: deprecated_member_use
            case DioErrorType.connectionTimeout:
              return 'Connection timed out!';
            // ignore: deprecated_member_use
            case DioErrorType.badCertificate:
              return 'Dont have the right authorization';

            // ignore: deprecated_member_use
            case DioErrorType.connectionError:
              return 'Error in connecting';
            // ignore: deprecated_member_use
            case DioErrorType.unknown:
              return 'Something went wrong!';
          }
        } else if (error is SocketException) {
          return 'No internet connection!';
        } else {
          return 'Unexpected error occured';
        }
      } on FormatException {
        return 'Bad response format';
      } catch (_) {
        return 'Unexpected error occured';
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return 'Unexpected error occured';
      } else {
        return 'Unexpected error occured';
      }
    }
  }
}
