import 'package:flutter/material.dart';

class LineUpPage extends StatefulWidget {
  const LineUpPage({Key? key}) : super(key: key);

  @override
  State<LineUpPage> createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF021852),
          title: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: "Create team 1\n",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                ),
                TextSpan(
                  text: "2h 49m left",
                  style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 14),
                )
              ]
            )
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline))
          ],
        ),
      ),
    );
  }
}
