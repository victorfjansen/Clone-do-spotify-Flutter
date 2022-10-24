import 'dart:convert';
import 'dart:io';

import 'package:untitled/shared/services/base_service.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static const BaseService baseService = BaseService();

  const LoginService();

  Future<bool> authenticateUser(
      {required String username, required String password}) async {
    final http.Response result =
        await http.get(Uri.parse(baseService.getApiUrl(endpoint: 'users')));
    if (result.statusCode != 200) {
      throw const HttpException('Ops! Algo deu Errado!');
    }

    final List<dynamic> parsedResult = jsonDecode(result.body);
    for (var value in parsedResult) {
      if (value['username'] == username && value['password'] == password) {
        return true;
      }
    }
    return false;
  }
}
