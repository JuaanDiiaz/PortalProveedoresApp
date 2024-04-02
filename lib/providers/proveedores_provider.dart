import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:portal_proveedores/models/login_response.dart';

class ProveedoresProvider extends ChangeNotifier{
  final _baseUrl = '7965-2806-2f0-90e0-d623-e557-67ad-6de5-e6b5.ngrok-free.app';
  String? token;

  ProveedoresProvider(){
    print('ProveedoresProvider inicializado');
  }

  Future<bool> logIn(String user, String password) async{
    final url = Uri.https(_baseUrl, 'api/Login');
    final reqBody = json.encode({
      'user': user,
      'password': password
    });
    try {
      final resp = await http.post(url,
      headers: {
        'Content-Type': 'application/json'
      },
      body: reqBody
      );

      final login = LoginResponse.fromJson(json.decode(resp.body)); 
      if(resp.statusCode == 200 && login.token != null){
        token = login.token;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}