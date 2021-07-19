import 'package:flutter/material.dart';

Color myColor = Color(0xff00bfa5);

class RoundedAlertBox extends StatefulWidget {
  @override
  _RoundedAlertBoxState createState() => _RoundedAlertBoxState();
}

class _RoundedAlertBoxState extends State<RoundedAlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: openAlertBox,
          color: myColor,
          child: Text(
            "Open Alert Box",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            //contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300,
              height: 48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    // child: TextField(
                    //   decoration: InputDecoration(
                    //     hintText: "Finding Your Ride",
                    //     border: InputBorder.none,
                    //   ),
                    //   maxLines: 1,
                    // ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 22.0),
                          child: Icon(Icons.location_pin),
                        ),
                        Text("Finding Your Ride"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
