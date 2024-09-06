import 'package:flutter/material.dart';

class ChatModel {
  String? img1;
  String? text1;
  String? text2;
  String? sound;
  ChatModel({required this.img1, required this.text1, required this.text2});
  ChatModel.fomJson(Map json) {
    img1 = json["img1"];
    text1 = json["text1"];
    text2 = json["text2"];
    sound = json["sound"];
  }
}
