import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shape
{
  Shape._();
  static Shape shape = Shape._();

  Widget KajuKatriShape({required bool selected,required String text})
  {
    return Expanded(
        child: ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            color: selected ? Colors.green : Colors.white,
            height: 10,
            alignment: Alignment.center,
            child: Text(
              selected ? "" : text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 10
              ),
            ),
          ),
        )
    );
  }
}
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.height, 0);
    path.lineTo(size.width , size.height/100);
    path.lineTo(0, size.width);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}