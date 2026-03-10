
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';

class AuthService {

  Future login(String email, String password) async {

    final res = await http.post(
      Uri.parse(ApiConfig.baseUrl + "/auth/login"),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode({"email":email,"password":password})
    );

    return jsonDecode(res.body);
  }
}
