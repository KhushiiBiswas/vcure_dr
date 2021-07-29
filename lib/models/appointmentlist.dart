import 'package:vcure_doctors/utils/api.dart';
import 'package:vcure_doctors/models/appointment.dart';



class AppList{

  List<Appointment> apps = [];
  int count = 0;
  String type ;
  
  AppList(String typ){ this.type = typ; }

  Future<AppList> reqlist() async{

    dynamic reqJson = await api.reqApi('api/appointment/getls?type='+ type);
    for (dynamic i in reqJson){
      apps.add(Appointment().fromJson(i));
      count++;
    }
  print(count);
  //await Future.delayed(Duration(seconds: 2));
  return this;
  }

}