import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Networking{
  Networking(this.url);
  final String url;

  Future<Map<String, dynamic>> getData() async{
    Response response = await get(Uri.parse(url));
    if(response.statusCode == 200){
      String data = response.body;

      Map<String, dynamic> decodedData = json.decode(response.body);
      return decodedData;
    }else{
      print(response.statusCode);
      throw Exception('error');
    }
  }
}