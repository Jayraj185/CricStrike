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
      // color: Colors.blue,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$title",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 21,
                    width: 21,
                    child: Image.asset("assets/image/thumb.png",color: Colors.white,fit: BoxFit.fill,),
                  ),
                  Text(
                    "$player Players",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 30,
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 2),
              borderRadius: BorderRadius.circular(6)
            ),
            alignment: Alignment.center,
            child: Text(
              "Play",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16
              ),
            ),
          )
        ],
      ),
    );
  }
}