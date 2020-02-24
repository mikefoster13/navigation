import 'package:flutter/material.dart';
import 'main.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        backgroundColor: Colors.blue,
        title: Text (
            'Page 3'
        ),
      ),
      body: Column (
        children: <Widget>[
          Center (
            child:
            Text (
              'Welcome to Page 3',
              style: TextStyle (
                color: Colors.blue,
                fontSize: 32,
              ),
            ),
          ),
          RaisedButton (
            color: Colors.blue,
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
