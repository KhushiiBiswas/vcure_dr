import 'package:vcure_doctors/models/user.dart';
import 'package:vcure_doctors/utils/api.dart';

class Appointment {
  
  String client;
  
  
  
  fromJson(Map<String, dynamic> json) {
    this.client = json['clientname'].toString();
    return this;
  }



}
