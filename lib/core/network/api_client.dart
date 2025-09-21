import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiClient {
  static late String baseUrl;

  ApiClient._internal() {
    baseUrl = "https://jsonplaceholder.typicode.com";
  }

  factory ApiClient() {
    return ApiClient._internal();
  }

  static Uri getUrl({required String endPoint}) =>
      Uri.parse("$baseUrl$endPoint");

  static get getHeader {
    return {
      "Accept": "application/json",
      "User-Agent": "PostmanRuntime/7.36.0",
    };
  }

  dynamic getRequest({required String endPoint}) async {
    try {
      Uri url = getUrl(endPoint: endPoint);
      log("Url : $url");
      http.Response response = await http.get(url, headers: getHeader);
      log("getRequest : $endPoint");
      log("Response: ${response.body} \n status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 404) {
        return http.Response("Data not found", 404);
      } else {
        return http.Response("Internal Server error", 500);
      }
    } on SocketException {
      log("SocketException : Please check internet connection");
      return http.Response("Please check internet connection", 503);
    } catch (e) {
      log("Exception : $e");
      return http.Response("Something went wrong try again", 500);
    }
  }
}
