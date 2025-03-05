import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'Failed to load products from the internet, there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});

      http.Response response =
          await http.post(Uri.parse(url), body: body, headers: headers);
      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);

        return data;
      } else {
        throw Exception(
            'Failed to load products from the internet, there is a problem with status code ${response.statusCode}, with body ${response.body}');
      }
    }
  }
}
