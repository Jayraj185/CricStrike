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
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/image/thumb.png",color: Colors.white,fit: BoxFit.fill,),
                  ),
                  Text(
                    "$player Players",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 30,
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 2),
              borderRadius: BorderRadius.circular(6)
            ),
            alignment: Alignment.center,
            child: const Text(
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