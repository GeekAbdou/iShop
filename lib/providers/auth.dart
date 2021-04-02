import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
    String _token;
    DateTime _expiryDate;
    String _userId;

  Future<void> signup(String email, String password) async {
      const url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[AIzaSyAGmVYt26GWSwkyHhc5JbbTKv1ESHM_kNE]';
      http.post(
        url,
        body: jsonEncode({
          'email' : email,
          'password' : password,
          'returnSecureToken' : true,

        })
      );
    }
  }
