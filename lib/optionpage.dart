import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gamepage.dart';
import 'package:tic_tac_toe/style.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  _GaState createState() => _GaState();
}

class _GaState extends State<OptionPage> {
  var username1;
  var username2;
  var notice = "";
  var about = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text("Tic Tac Toe", style: MeroStyle.getStyle(25)),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(notice, style: TextStyle(fontSize: 20, color: Colors.red)),
            SizedBox(height: 30),
            TextField(
              onChanged: (val) {
                setState(() {
                  username1 = val;
                });
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  labelText: "First Player",
                  hintText: "Enter the first Player name",
                  labelStyle: MeroStyle.getStyle(20),
                  fillColor: Colors.blue[50],
                  prefixIcon: Icon(Icons.person),
                  filled: true),
              keyboardType: TextInputType.name,
              obscureText: false,
            ),
            SizedBox(height: 30),
            TextField(
              onChanged: (val) {
                username2 = val;
              },
              decoration: InputDecoration(
                  labelText: "Second Player",
                  hintText: "Enter the Second Player name",
                  labelStyle: MeroStyle.getStyle(20),
                  fillColor: Colors.blue[50],
                  prefixIcon: Icon(Icons.person),
                  filled: true),
              keyboardType: TextInputType.name,
              obscureText: false,
            ),
            SizedBox(height: 50),
            CupertinoButton(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green[400],
              onPressed: () {
                setState(() {
                  if (username1 == null || username2 == null) {
                    notice = "Please fill your name first";
                  } else {
                    about =
                        "$username1 will play as Cross and $username2 will play as Circle";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GamePage(
                                username1: username1, username2: username2)));
                  }
                });
              },
              child: Text(
                "Start Game",
                style: MeroStyle.getStyle(20),
              ),
            )
          ],
        ));
  }
}
