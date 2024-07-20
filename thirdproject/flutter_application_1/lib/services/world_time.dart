import 'dart:convert';
import 'package:intl/intl.dart';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class WorldTime{
  String ?location;
  String ?time;
  String ?url;
  String ?flag;
  bool ?isDayTime;
  WorldTime({this.location,this.flag,this.url});

  Future <void> getTime () async{
    try {
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
  
      DateTime now = DateTime.parse(data['datetime']);
      time = now.toString();
      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 6 && now.hour < 15 ? true : false;
    } catch (e) {
      print("error occurred: $e");
      time = "could not get time data";
    }
      
    }
 
  
}

