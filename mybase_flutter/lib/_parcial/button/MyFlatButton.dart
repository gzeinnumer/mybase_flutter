import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyFlatButton extends StatelessWidget {
  final void Function() callback;
  String title;

  MyFlatButton.custom(this.title, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                callback();
              },
              child: Text(
                title,
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

