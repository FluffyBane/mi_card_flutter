import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/cheese.png'),
              ),
              Text(
                'Stephen',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  color: Colors.blue.shade100,
                  letterSpacing: 2.3,
                ),
              ),
              SizedBox(
                height: 25,
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              CardWithIcon(
                icon: Icons.phone,
                text: '+44123456789',
              ),
              CardWithIcon(
                icon: Icons.email,
                text: 'stevo612@gmail.com',
              ),
              CardWithIcon(
                icon: Icons.location_city,
                text: 'Dundee, UK',
              ),
              CardWithIcon(
                icon: Icons.home,
                text: 'www.greenflame.com',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardWithIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const CardWithIcon({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blueAccent.shade400,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.blueAccent.shade400,
          ),
        ),
      ),
    );
  }
}
