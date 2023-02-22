import 'package:biling/biling.dart';
import 'package:biling/home.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        'biling':(context) => biling(),

      },
    )
  );
}