import 'package:vcure_doctors/utils/api.dart';

User user = User();

class User {
  String username;
  String pass;
  String email;
  
  fromJson(Map<String, dynamic> json){
   username = json['username'].toString();
   email = json['email'].toString();
  }

  Map<String, dynamic> toJson() => {
   "username" : this.username,
   //"email" : this.email,
   "password" : this.pass,
  };
 
  Future<void> signinCred(String unam , String pass) async{
    this.username = unam;
    this.pass = pass;
    this.email = ' ';
    await api.getAuth(this.toJson());
    this.reqUser();
  }

    Future<void> reqUser() async{
    dynamic reqJson = await api.reqApi('api/user/');
    this.fromJson(reqJson);
  }
  
}