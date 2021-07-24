import 'package:vcure_doctors/models/user.dart';
import 'package:vcure_doctors/utils/api.dart';


Doctor doc = Doctor();

class Doctor {

  User user;
  String name;
  String phone;
  String experience;
  String specialization;
  String subSpec;
  String address;
  String timeslot;
  String basefee;
  String finalfee;

  Future<void> validateDoc(User usr) async {
    this.user = usr;
    dynamic reqJson = await api.reqApi('api/validateDoc');
    this.fromJson(reqJson);
  }

  fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    phone = json['phone'].toString();
    experience = json['experience'].toString();
    specialization = json['specialization'].toString();
    subSpec = json['sub_specialization'].toString();
    address = json['clinic_address'].toString();
    timeslot = json['timeslot'].toString();
    return this;
  }
}
