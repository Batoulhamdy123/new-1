import 'package:flutter/material.dart';
import 'package:newproject/AppScreens/NumbersScreen/CustomWidget.dart';
import 'package:newproject/AppScreens/NumbersScreen/chatModel.dart';
import 'package:newproject/AppScreens/NumbersScreen/listOfItem.dart';

// ignore: must_be_immutable
class Number extends StatelessWidget {
  Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 231, 232, 210),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 109, 83, 74),
        //leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Numbers",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(children: [
        //listOfItem[0][0],
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: ChatList.length,
            itemBuilder: (context, index) => CustomWidget(
              img1: ChatList[index].img1 ??
                  "assets/images/numbers/number_ten.png",
              text1: ChatList[index].text1 ?? "hello",
              text2: ChatList[index].text2 ?? "hello",
              sound: ChatList[index].sound ??
                  "sounds/numbers/number_one_sound.mp3",
            ),
          ),
        ),
        /*CustomWidget(
          img1: Image.asset("assets/images/numbers/number_one.png", height: 75),
          text1: "ichi",
          text2: "one",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_two.png",
            height: 75,
          ),
          text1: "Ni",
          text2: "two",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_three.png",
            height: 75,
          ),
          text1: "San",
          text2: "three",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_four.png",
            height: 75,
          ),
          text1: "sha",
          text2: "four",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_five.png",
            height: 75,
          ),
          text1: "Go",
          text2: "five",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_six.png",
            height: 75,
          ),
          text1: "roku",
          text2: "six",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_seven.png",
            height: 75,
          ),
          text1: "sebun",
          text2: "seven",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_eight.png",
            height: 75,
          ),
          text1: "hashi",
          text2: "eight",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_nine.png",
            height: 75,
          ),
          text1: "Go",
          text2: "five",
        ),
        CustomWidget(
          img1: Image.asset(
            "assets/images/numbers/number_ten.png",
            height: 75,
          ),
          text1: "Go",
          text2: "five",
        ),*/
      ]),
    );
  }

  List<ChatModel> ChatList =
      listOfItem.map((e) => ChatModel.fomJson(e)).toList();
}
