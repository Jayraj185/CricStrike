import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xD9021852),
                Color(0xb3021852),
                Color(0xd9021852),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "OTP Verify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  // Pinput(textInputAction: TextInputAction.next,
                  //  defaultPinTheme : Container(
                  //   width: 56,
                  //   height: 56,
                  //   textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                  //   decoration: BoxDecoration(color: Colors.white,
                  //     border: Border.all(color: Colors.black),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  // ),
                  //   length: 6,
                  //   toolbarEnabled: false,
                  // ),
                  Container(
                    width: 56,
                    height: 56,
                    // textStyle: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed("nav");
                        }, child: const Text("VeriFy")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
