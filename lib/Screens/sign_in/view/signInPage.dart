// ignore_for_file: avoid_print

import 'package:country_code_picker/country_code_picker.dart';
import 'package:cricstreak/Utils/firehelper.dart';
import 'package:edge_alerts/edge_alerts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController txtNumber = TextEditingController();
  String code = "+91";

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
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  CountryCodePicker(
                                    showDropDownButton: true,
                                    showFlagMain: true,
                                    padding: const EdgeInsets.only(
                                        right: 0, left: 0),

                                    onChanged: (value) {
                                      print(
                                          "================================================================================================================> ${value!.dialCode}");
                                      code = value.dialCode!;
                                      print;
                                    },

                                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')

                                    initialSelection: '+91',
                                    // builder: (p0) {
                                    //   print("================> $p0");
                                    // },
                                    favorite: ['+91', 'IND'],

                                    // optional. Shows only country name and flag

                                    showCountryOnly: false,
                                    flagDecoration: Decoration.lerp(
                                        BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        const BoxDecoration(),
                                        0),
                                    showFlag: true,

                                    // optional. Shows only country name and flag when popup is closed.

                                    showOnlyCountryWhenClosed: false,

                                    // optional. aligns the flag and the Text left

                                    alignLeft: false,

                                    boxDecoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                  // Padding(
                                  //   padding:
                                  //       EdgeInsets.only(left: 80, top: 12),
                                  //   child: InkWell(child: Icon(
                                  //       Icons.arrow_drop_down,
                                  //       color: Colors.black,
                                  //     ) ,
                                  //     onTap: () {return
                                  //
                                  //
                                  //        CountryCodePicker(
                                  //         padding: EdgeInsets.only(right: 0, left: 0),
                                  //
                                  //         onChanged: print,
                                  //
                                  //         // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  //
                                  //         initialSelection: 'IND',
                                  //
                                  //         favorite: ['+91', 'IND'],
                                  //
                                  //         // optional. Shows only country name and flag
                                  //
                                  //         showCountryOnly: true,
                                  //
                                  //         showFlag: true,
                                  //
                                  //         // optional. Shows only country name and flag when popup is closed.
                                  //
                                  //         showOnlyCountryWhenClosed: false,
                                  //
                                  //         // optional. aligns the flag and the Text left
                                  //
                                  //         alignLeft: false,
                                  //
                                  //         boxDecoration:
                                  //         BoxDecoration(color: Colors.white),
                                  //       );
                                  //
                                  //     },
                                  //   ),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, left: 115),
                                    child: Container(
                                      width: 1.5,
                                      height: 35,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: "Enter Mobile Number",
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        controller: txtNumber,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          edgeAlert(context,
                              title: 'Title',
                              description: 'Description',
                              gravity: Gravity.top);
                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '$code ${txtNumber.text}',
                            verificationCompleted:
                                (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent:
                                (String verificationId, int? resendToken) {
                              Get.toNamed("otp");
                            },
                            codeAutoRetrievalTimeout:
                                (String verificationId) {},
                          );
                        },
                        child: const Text("Get Otp"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
