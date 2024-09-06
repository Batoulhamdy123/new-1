import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:newproject/AppScreens/NumbersScreen/chatModel.dart';
import 'package:newproject/AppScreens/NumbersScreen/listOfItem.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget(
      {super.key,
      required this.img1,
      required this.text1,
      required this.text2,
      required this.sound});
  final String img1;
  final String text1;
  final String text2;
  final String sound;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 60,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 231, 232, 210),
              child: Image.asset(
                img1,
                height: 60,
              )),
          Column(
            children: [
              SizedBox(width: 40),
              Text(
                text1,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(sound));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
/*Container(
      color: Color.fromARGB(255, 231, 232, 210),
      child: Image.asset(
        "assets/images/numbers/number_one.png",
        // width: 50,
        height: 90,
      ),
    );*/