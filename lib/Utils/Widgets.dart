import 'package:flutter/material.dart';

class Widgets
{
  Widgets._();
  static Widgets widgets = Widgets._();

  Widget MyPlayButton({required String title,required String player})
  {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.blue,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "$title",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}