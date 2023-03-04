import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseAPI {
  Future<Response?> postRequest(
      String url, FormData? formData, String header) async {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    final prefs = await SharedPreferences.getInstance();
    //TODO set api key
    var token = "";
    if (kDebugMode) {
      print("Url: $url");
      print("Header: Authorization: $header $token");
      print("body: ${formData?.fields}");
    }

    Response? response;
    try {
      response = await dio.post(url,
          data: formData,
          options: Options(
            headers: {
              "Accept": "application/json",
              "Authorization": "$header $token"
            },
          ));
    } catch (e) {
      response = null;
      if (kDebugMode) {
        print("error: $e");
      }
    }
    if (kDebugMode) {
      print("Response: $response");
    }
    return response;
  }

  Future<Response?> getRequest(String url, String header) async {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("speed_dating_app_token");
    if (kDebugMode) {
      print("Url: $url");
      print("Header: Authorization: $header $token");
    }

    Response? response;
    try {
      response = await dio.get(url,
          options: Options(
            headers: {
              "Accept": "application/json",
              "Authorization": "$header $token"
            },
          ));
    } catch (e) {
      response = null;
      if (kDebugMode) {
        print("error: $e");
      }
    }
    if (kDebugMode) {
      print("Response: $response");
    }
    return response;
  }
}
