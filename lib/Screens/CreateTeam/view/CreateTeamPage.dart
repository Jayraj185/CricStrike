import 'dart:math';

import 'package:flutter/material.dart';

class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({Key? key}) : super(key: key);

  @override
  State<CreateTeamPage> createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF021852),
          elevation: 0,
          title: Row(
            children: [
              Column(
                children: [
                  const Text(
                    "Players",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "0",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        )),
                        TextSpan(text: "/11",style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ))
                      ]
                    )
                  ),
                ],
              ),
              Transform.rotate(
                angle: pi/2,
                child: const Text(
                  "-------",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
