import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hamasfsfsafafada'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),









      // body:Column(
      //   children: [
      //     Text('Hello'),
      //     Text('World'),
      //     ElevatedButton(
      //       onPressed: (){},
      //       child: Text('Click Me'),
            
      //     )
      //   ],
      // ),
      // body:Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Row(children: [
      //       Expanded(child: Image.asset('assets/1.jpg')),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //           color: Colors.cyan,
      //           child: Text('one'),
      //         ),
      //       ),
      //       Expanded(
      //          flex: 3,
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //           color: Colors.pink,
      //           child: Text('two'),
      //         ),
      //       ),
      //       Expanded(
      //          flex: 2,
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //           color: Colors.amber,
      //           child: Text('three'),
      //         ),
      //       ),
          
          
          
          
          
          
      //     ],),
      //   ],
      // ),





      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(2.0),
      //       child: Container(
      //         color: Colors.red,
      //         padding: EdgeInsets.all(20),
      //         child: Text('one'),
      //       ),
      //     ),
     
      //     Container(
      //       color: Colors.blue,
      //       padding: EdgeInsets.all(30),
      //       child: Text('two'),
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [Text("data"), Text("data2")],
      //     )
      //   ],
      // ),

      // body:Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[

      //   Text('Hello, World!'),
      //   ElevatedButton(
      //     onPressed: () {},
      //     child: Text('Click Me'),
      //   ),
      //   Container(
      //     color: Colors.cyan,
      //     padding: EdgeInsets.all(30),
      //     child: Text('Inside Container'),
      //   ),
      //   Text("hello"),
      //   Container(
      //     padding: EdgeInsets.all(20),
      //     color: Colors.amber,
      //     child: Text('two'),
      //   ),

      // ],),
      //   body:Container(
      //  color: Colors.red[400],
      //   child: Text('Hello'),
      //   padding: EdgeInsets.fromLTRB(10, 30, 30, 40),
      //   margin: EdgeInsets.all(30),

      //   ),
      // body: Center(
      //   child: IconButton(
      //     icon: Icon(Icons.mail),
      //     style: ButtonStyle(
      //       backgroundColor: MaterialStateProperty.all(Colors.red),
      //     ),
      //     onPressed: () {
      //       print('You clicked me!');
      //     },
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You clicked me!');
        },
        child: const Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
