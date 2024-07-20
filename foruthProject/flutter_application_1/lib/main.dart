import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CenterPage(),
    );
  }
}

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 330,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/1.png'),
                        ),
                        SizedBox(width: 16), // Space between avatar and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mausam Rayamajhi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'A trendsetter',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Add space between profile and stats
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CARDX('846', 'Collect'),
                        CARDX('51', 'Attention'),
                        CARDX('267', 'Track'),
                        CARDX('39', 'Coupons'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CARDU(Icons.account_balance_wallet, 'Wallet'),
                  SizedBox(width: 30),
                  CARDU(Icons.local_shipping, 'Delivery'),
                  SizedBox(width: 30),
                  CARDU(Icons.message, 'Message'),
                  SizedBox(width: 30),
                  CARDU(Icons.support_agent, 'Support'),
                ],
              ),
            ),
            Column(
              children: [
                items("Address", Icons.location_on, "Ensure your harvesting address"),
                SizedBox(height: 10),
                items("Privacy", Icons.lock, "System permission change"),
                SizedBox(height: 10),
                items("General", Icons.settings, "Basic functional settings"),
                SizedBox(height: 10),
                items("Notification", Icons.notifications, "Take over the news in time"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget CARDX(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

Widget CARDU(IconData icon, String label) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(137, 201, 192, 192),
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(8),
        child: Icon(icon, size: 25, color: const Color.fromARGB(255, 0, 0, 0)),
      ),
      SizedBox(height: 4),
      Text(label, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
    ],
  );
}

Widget items(String label, IconData iconPhoto, String description) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        width: 330,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(
                  iconPhoto,
                  size: 30,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blueAccent,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
