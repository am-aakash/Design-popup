import 'package:design_popup/finding_ride_popup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            //barrierColor: Colors.black54,
            MaterialPageRoute(
              //builder: (context) => FindingRidePopup(),
              builder: (context) => RoundedAlertBox(),
            ),
          )
        },
        tooltip: 'Increment',
        child: Icon(Icons.circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
