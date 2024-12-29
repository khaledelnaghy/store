import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String urlBase ,
  //  @required String? token
   }) async {

Map<String , String > headers= {};
    // if (token != null) {
    //   headers.addAll({
    //     "Authorization": "Bearer $token",
    //   });
    // }
    http.Response response = await http.get(
      Uri.parse(urlBase),headers : headers
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a Problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      // @required String? token
      }) async {
    Map<String, String> headres = {};

    // if (token != null) {
    //   headres.addAll({
    //     "Authorization": "Bearer $token",
    //   });
    // }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headres,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
        'there is a Problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
  }
  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      // @required String? token

      }) async {
    Map<String, String> headres = {};

    headres.addAll({

      "Content-Type": "application/x-www-form-urlencoded",
    });

    // if (token != null) {
    //   headres.addAll({
    //     "Authorization": "Bearer $token",
    //   });
    // }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headres,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
        'there is a Problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}',
      );
    }
      }
}
