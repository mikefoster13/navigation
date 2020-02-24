import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.white,
        title: Text (
          'Page 1',
              style: TextStyle (
            color: Colors.black,
        ),
        ),
      ),
      body: Column (
        children: <Widget>[
          Center (
            child:
              Text (
                'Welcome to Page 1',
                style: TextStyle (
                  fontSize: 32,
                ),
              ),
          ),
          RaisedButton (
            color: Colors.white,
            child: Text(
              'Go Home'
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home',)
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
