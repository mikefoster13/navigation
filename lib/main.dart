import 'package:flutter/material.dart';
import 'package:threepagenavigation/page2.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Navigate to Three Separate Pages',
              style: TextStyle (
                fontSize: 28,
              ),
            ),
            Row (
              children: <Widget>[
                Container (
                  color: Colors.blue,
                  child:  RaisedButton (
                    color: Colors.white,

                    child: Text (
                        'Go to Page 1'
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()
                        ),
                      );
                    },
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
               Container (
                 color: Colors.red,
                 child: RaisedButton (
                   color: Colors.red,

                   child: Text (
                       'Go to Page 2'
                   ),
                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Page2()
                       ),
                     );
                   },
                 ),
                 padding: EdgeInsets.all(10.0),
               ),
                Container (
                  color: Colors.white12,
                  child: RaisedButton (
                    color: Colors.blue,
                    child: Text (
                        'Go to Page 3'
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()
                        ),
                      );
                    },
                  ),
                  padding: EdgeInsets.all(10.0),

                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
