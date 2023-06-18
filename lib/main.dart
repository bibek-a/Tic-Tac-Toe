import "package:flutter/material.dart";
import 'gamepage.dart';
import 'optionpage.dart';

void main() {
  runApp(MaterialApp(
      title: "Welcome to the Tic Tac Toe Game",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: OptionPage()));
}
