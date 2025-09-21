import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:user_details_app/core/common/widgets/common_scack_bar.dart';

import '../network/api_client.dart';

class CommonRepository {
  static dynamic getMethod({required String endPoint}) async {
    try {
      final response =
          await ApiClient().getRequest(endPoint: endPoint) as http.Response;
      if (response.statusCode == 200) {
        return await json.decode(response.body);
      } else {
        showCommonSnackBar(
          message: response.body,
          snackBarType: SnackBarType.failure,
        );
        return null;
      }
    } on SocketException {
      showCommonSnackBar(
        message: "Please check internet connection",
        snackBarType: SnackBarType.failure,
      );
      return null;
    } catch (e) {
      showCommonSnackBar(
        message: "Something went wrong",
        snackBarType: SnackBarType.failure,
      );
      return null;
    }
  }
}
