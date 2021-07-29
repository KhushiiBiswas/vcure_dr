import 'dart:convert';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

Api api = Api();

class Api {
  //final storage = FlutterSecureStorage();
  //String token = '';
  String baseurl;
  Map<String, String> headers;

  Future<void> init() async {
    this.baseurl = 'http://192.168.43.111:5555/';
    this.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  Future<void> getAuth(Map<String, dynamic> cred) async {
    dynamic res = await http.post(
      Uri.parse(this.baseurl + 'api-token-auth/'),
      headers: this.headers,
      body: jsonEncode(cred),
    );
    dynamic decres = jsonDecode(res.body);
    headers['Authorization'] = 'Token ' + decres['token'];
    print(res.toString());
  }

  Future<dynamic> reqApi(String endpoint) async {
    dynamic res = await http.get(
      Uri.parse(this.baseurl + endpoint),
      headers: this.headers,
    );
  
    return jsonDecode(res.body);
  }
    Future<dynamic> exportApi(String endpoint, Map<String, dynamic> reqJson) async {
    dynamic res = await http.post(
      Uri.parse(this.baseurl + endpoint),
      headers: this.headers,
      body: jsonEncode(reqJson),
    );
  
    return jsonDecode(res.body);
  }
  
}
