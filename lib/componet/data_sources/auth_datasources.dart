// class AuthDataSource {
//   AuthDataSource(this.apiClient);
//   final ApiClient apiClient;

//   Future<dynamic> getAllThePreferences() async {
//     try {
//       final result = await apiClient.get(EndPionts.preferences);
//       print(result);
//       return result.data;
//     } catch (e) {
//       kToastMsgPopUp(NetworkExceptions.getDioException(e), ToastGravity.CENTER);
//       rethrow;
//     }
//   }

//   Future<dynamic> sendEmailVerification({required String email}) async {
//     try {
//       final result = await apiClient.post(
//         EndPionts.verifyEmail,
//         data: {'email': email},
//       );
//       print(result);
//       return result.data;
//     } catch (e) {
//       kToastMsgPopUp(NetworkExceptions.getDioException(e), ToastGravity.CENTER);
//       rethrow;
//     }
//   }