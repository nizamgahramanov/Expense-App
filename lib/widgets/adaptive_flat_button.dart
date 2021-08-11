import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final VoidCallback presentDatePicker;
  final String text;
  AdaptiveFlatButton(this.presentDatePicker, this.text);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker,
          )
        : Container(
            height: 75,
            child: FlatButton(
              textColor: Theme.of(context).primaryColor,
              onPressed: presentDatePicker,
              child: Text(
                "Chose DATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
