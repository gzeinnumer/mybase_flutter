import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyRaisedButton extends StatelessWidget {
  final void Function() callback;
  final String title;

  MyRaisedButton.custom(this.title, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: callback,
              child: new Text(title),
            )
          ],
        ),
      ),
    );
  }
}

