import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tic_tac_toe/style.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

class GamePage extends StatefulWidget {
  var username1;
  var username2;
  GamePage({this.username1, this.username2});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<String> gameState = [
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty",
    "Empty"
  ];

  var Cancel = Icon(Icons.cancel, size: 100, color: Colors.black);
  var Circle = Icon(Icons.circle, size: 100, color: Colors.white);
  var ButtonNAME = "Reset Game";
  bool isCross = true;
  var message = "Lets Play";
  var count = 0;
  var isPressed = 0;

  // AssetsAudioPlayer player = AssetsAudioPlayer();

  playGame(int index) {
    isPressed = 100;
    if (ButtonNAME == "Next Game") {
      ButtonNAME == "Reset Game";
    } else {
      message = "Turn for ${widget.username1}";
      if (gameState[index] == "Empty") {
        // player.open(Audio("music/audio2.wav"));

        if (isCross) {
          gameState[index] = "Cancel";
          count++;
          count != 9 ? message = "Turn for ${widget.username2}" : message = "";
        } else {
          gameState[index] = "Circle";
          count++;
          count != 9 ? message = "Turn for ${widget.username1}" : message = "";
        }
        checkForWin();
        isCross = !isCross;
      }
      setState(() {});
    }
  }

  void checkForWin() {
    setState(() {});
    if (gameState[0] != "Empty" &&
        gameState[0] == gameState[1] &&
        gameState[1] == gameState[2]) {
      gameState[1] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      // player.open(Audio("music/audio.wav"));
      ButtonNAME = "Next Game";
    } else if (gameState[3] != "Empty" &&
        gameState[3] == gameState[4] &&
        gameState[4] == gameState[5]) {
      gameState[4] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[6] != "Empty" &&
        gameState[6] == gameState[7] &&
        gameState[7] == gameState[8]) {
      gameState[7] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[0] != "Empty" &&
        gameState[0] == gameState[3] &&
        gameState[3] == gameState[6]) {
      gameState[3] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[1] != "Empty" &&
        gameState[1] == gameState[4] &&
        gameState[4] == gameState[7]) {
      gameState[4] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[2] != "Empty" &&
        gameState[2] == gameState[5] &&
        gameState[5] == gameState[8]) {
      gameState[2] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[0] != "Empty" &&
        gameState[0] == gameState[4] &&
        gameState[4] == gameState[8]) {
      gameState[4] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (gameState[2] != "Empty" &&
        gameState[2] == gameState[4] &&
        gameState[4] == gameState[6]) {
      gameState[4] == "Cancel"
          ? message = "${widget.username1} won"
          : message = "${widget.username2} won";
      ButtonNAME = "Next Game";
      // player.open(Audio("music/audio.wav"));
    } else if (!gameState.contains("Empty")) {
      message = "Noone won";
      ButtonNAME = "Next Game";
    }
  }

  getIcon(int index) {
    switch (gameState[index]) {
      case ("Cancel"):
        return Cancel;
        break;

      case ("Circle"):
        return Circle;
        break;

      case ("Empty"):
        return null;
        break;
    }
  }

  void resetGame() {
    setState(() {
      // player.open(Audio("music/audio.wav"));
      gameState = List.filled(9, "Empty");
      isCross = true;
      if (this.ButtonNAME == "Next Game") {
        this.ButtonNAME = "Reset Game";
      }
      count = 0;
      isPressed = 0;
      message = "Turn for ${widget.username1}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 28),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.green[700],
          title: Text(
            message,
            style: MeroStyle.getStyle(28),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 10),

              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    // mainAxisSpacing: 0.1,
                    childAspectRatio: 0.9,
                    // crossAxisSpacing: 0
                  ),
                  itemCount: 9,
                  shrinkWrap: true,
                  itemBuilder: (contect, index) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green[900],
                                borderRadius: BorderRadius.circular(20)),
                            child: CupertinoButton(
                              onPressed: () {
                                playGame(index);
                              },
                              child: Center(child: getIcon(index)),
                            )),
                      )),
              SizedBox(height: 30),
              CupertinoButton(
                  borderRadius: BorderRadius.circular(15),
                  onPressed: resetGame,
                  child: Text(ButtonNAME, style: MeroStyle.getStyle(20)),
                  color: Colors.green[700]),
              SizedBox(height: 0)
            ],
          ),
        ));
  }
}
