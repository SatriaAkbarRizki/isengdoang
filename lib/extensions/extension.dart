// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

extension MyText on String {
  Text mytext(context) {
    return Text(
      this,
      style: TextStyle(fontSize: 28),
    );
  }
}

// Ini pakai parameter kalau diminta tiap class
extension MyButton on String {
  TextButton mybuttonNext(String routeName, context, {Object? argumentsClass}) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName, arguments: argumentsClass);
        },
        child: Text(this));
  }

  //  Ini tanpa pakai arguments
  // extension MyButton on String {
  // TextButton mybuttonNext(String routeName, context) {
  //   return TextButton(
  //       onPressed: () {
  //         Navigator.pushNamed(context, routeName);
  //       },
  //       child: Text(this));
  // }

  TextButton mybuttonBack(context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(this));
  }
}
