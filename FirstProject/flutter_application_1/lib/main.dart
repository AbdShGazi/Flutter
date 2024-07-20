import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjalevel=0;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 48, 59),
      appBar: AppBar(
        title: Text('Yashika ID CARD'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(125, 61, 191, 243),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 112, 192, 37),
      ),
      body:  Padding(
        
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: <Widget>[
            Center(
              child: CircleAvatar(
                
                backgroundImage: AssetImage('assets/sonar.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Color.fromARGB(255, 112, 192, 37),
            ),
            
            
            SizedBox(height: 10.0),

            Text(
              'NAME',
              style: TextStyle(color: Color.fromARGB(255, 173, 172, 169), letterSpacing: 2.0),
            ),SizedBox(height: 10.0),
            Text(
              'Yashika shawer',
              style: TextStyle(color: Color.fromARGB(255, 112, 192, 37), letterSpacing: 2.0,fontWeight: FontWeight.bold,fontSize: 28.0),
            
            ),SizedBox(height: 10.0),SizedBox(height: 10.0),
            
            Text(
              'Current user level',
              style: TextStyle(color: Color.fromARGB(255, 173, 172, 169), letterSpacing: 2.0),
            ),
            Text(
              '$ninjalevel',
              style: TextStyle(color: Color.fromARGB(255, 112, 192, 37), letterSpacing: 2.0,fontWeight: FontWeight.bold,fontSize: 28.0),
            
            ),SizedBox(height: 30.0),
            Row(children: [
              Icon(Icons.email, color: Color.fromARGB(255, 173, 172, 169),),SizedBox(width: 10.0),
              Text("Abdshgazi@gmail.com",style: TextStyle(color: Color.fromARGB(255, 112, 192, 37), letterSpacing: 2.0,fontSize: 15.0),),


            ],)
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}