import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:flutter_application_1/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = "Time is loading";

  void setuptime() async {
    WorldTime instance = WorldTime(
      location: "Berlin",
      flag: "germany.png",
      url: "Europe/Berlin",
    );
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time,
      'isDayTime':instance.isDayTime,
    });

    
    // print(instance.time);
    // setState(() {
    //   time = instance.time!;
    // });
  }

  @override
  void initState() {
    super.initState();
    print("initState function ran");
    setuptime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: SpinKitFadingCube(
          color: Color.fromARGB(209, 11, 175, 204),
          
          size: 50.0,
        ),
      ),
    );
  }
}

