
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';

class WalletService {

  Future deposit(userId,amount) async {

    final res = await http.post(
      Uri.parse(ApiConfig.baseUrl + "/wallet/deposit"),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode({
        "userId":userId,
        "amount":amount
      })
    );

    return jsonDecode(res.body);
  }
}
