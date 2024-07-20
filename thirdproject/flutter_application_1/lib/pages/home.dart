import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
  data= data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
  print(data);
    String bgImage = data['isDayTime'] ? 'assets/1.jpg' : 'assets/2.jpg';
    Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: bgColor,
    body:SafeArea(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$bgImage'),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
        child: Column(
        
          children: [
            ElevatedButton.icon(onPressed: () async {
                         dynamic result= await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data={
                              'time':result['time'],
                              'location':result['location'],
                              'isDayTime':result['isDayTime'],
                              'flag':result['flag'],
                            };
                          });
                        }, label: Text("Edit Location"), icon: Icon(Icons.edit_location,color: bgColor,)),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data['location'],
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  
                  
                ),
                
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(data['time'],style:TextStyle(
              fontSize: 66.0,color: const Color.fromARGB(255, 255, 255, 255)
            ),),
          ],
        ),
      ),
    )),
    );
  }
}