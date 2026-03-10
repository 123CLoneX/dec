
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/api.dart';

class BettingService {

  Future placeBet(userId,eventId,team,stake,odds) async {

    final res = await http.post(
      Uri.parse(ApiConfig.baseUrl + "/bets/place"),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode({
        "userId":userId,
        "eventId":eventId,
        "team":team,
        "stake":stake,
        "odds":odds
      })
    );

    return jsonDecode(res.body);
  }

}
