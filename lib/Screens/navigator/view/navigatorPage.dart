import 'package:cricstreak/Screens/navigator/controller/navigatorController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

import '../../news/controller/newsController.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  NavigatorController navigatorController = Get.put(NavigatorController());
  NewsController newsController = Get.put(NewsController());

  // final LocalAuthentication auth = LocalAuthentication();
  // _SupportState _supportState = _SupportState.unknown;
  // bool? _canCheckBiometrics;
  // List<BiometricType>? _availableBiometrics;
  // String _authorized = 'Not Authorized';
  // bool _isAuthenticating = false;
  //
  //
  // void initState() {
  //   super.initState();
  //   auth.isDeviceSupported().then(
  //         (bool isSupported) => setState(() => _supportState = isSupported
  //         ? _SupportState.supported
  //         : _SupportState.unsupported),
  //   );
  //   _checkBiometrics();
  //   _getAvailableBiometrics();
  //   _authenticate();
  //   _authenticateWithBiometrics();
  //   _cancelAuthentication();
  // }
  //
  // Future<void> _checkBiometrics() async {
  //   late bool canCheckBiometrics;
  //   try {
  //     canCheckBiometrics = await auth.canCheckBiometrics;
  //   } on PlatformException catch (e) {
  //     canCheckBiometrics = false;
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   setState(() {
  //     _canCheckBiometrics = canCheckBiometrics;
  //   });
  // }
  //
  // Future<void> _getAvailableBiometrics() async {
  //   late List<BiometricType> availableBiometrics;
  //   try {
  //     availableBiometrics = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     availableBiometrics = <BiometricType>[];
  //     print(e);
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   setState(() {
  //     _availableBiometrics = availableBiometrics;
  //   });
  // }
  //
  // Future<void> _authenticate() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Let OS determine authentication method',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //       ),
  //     );
  //     setState(() {
  //       _isAuthenticating = false;
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   setState(
  //           () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  // }
  //
  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = 'Authenticating';
  //     });
  //     authenticated = await auth.authenticate(
  //       localizedReason:
  //       'Scan your fingerprint (or face or whatever) to authenticate',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: true,
  //       ),
  //     );
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Authenticating';
  //     });
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //   setState(() {
  //     _authorized = message;
  //   });
  // }
  //
  // Future<void> _cancelAuthentication() async {
  //   await auth.stopAuthentication();
  //   setState(() => _isAuthenticating = false);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => DefaultTabController(
          length: navigatorController.NavigatIndex.value==2?2:3,
          child: Scaffold(
            appBar: navigatorController.NavigatIndex.value == 2
                ? AppBar(
                    bottom: TabBar(
                      labelColor: Color(0xFFFFFFFF),
                      onTap: (value) {
                        if (newsController.gamename.value == 1) {
                          newsController.gamename.value = 0;
                        } else {
                          newsController.gamename.value = 1;
                        }
                      },
                      indicatorColor: Color(0xFFFFFFFF),
                      automaticIndicatorColorAdjustment: true,
                      tabs: [
                        Tab(
                          text: "Cricket",
                        ),
                        Tab(
                          text: "Football",
                        ),
                      ],
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/image/applogo.png",
                          height: 30,
                        ),
                        Text(
                          " CRICNEWS",
                        ),
                      ],
                    ),
                    backgroundColor: Color(0xff021852),
                  )
                : navigatorController.NavigatIndex.value == 3
                    ? AppBar(
                        bottom: TabBar(
                          labelColor: Color(0xFFFFFFFF),
                          onTap: (value) {
                            if (newsController.gamename.value == 1) {
                              newsController.gamename.value = 0;
                            } else {
                              newsController.gamename.value = 1;
                            }
                          },
                          indicatorColor: Color(0xFFFFFFFF),
                          automaticIndicatorColorAdjustment: true,
                          tabs: [
                            Tab(
                              text: "Yesterday",
                            ),  Tab(
                              text: "Today",
                            ),
                            Tab(
                              text: "Tomorrow",
                            ),
                          ],
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            Image.asset(
                              "assets/image/applogo.png",
                              height: 30,
                            ),
                            Text(
                              " CRICNEWS",
                            ),
                          ],
                        ),
                        backgroundColor: Color(0xff021852),
                      )
                    : AppBar(
                        actions: [
                          navigatorController.NavigatIndex.value == 0 ||
                                  navigatorController.NavigatIndex.value == 1 ||
                                  navigatorController.NavigatIndex.value == 4
                              ? Padding(
                                  padding: EdgeInsets.only(
                                    right: 13,
                                    top: 6,
                                    bottom: 6,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      navigatorController.NavigatIndex.value =
                                          3;
                                    },
                                    child: Container(
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xfffffbae),
                                            Color(0xffefd473),
                                          ],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 6,
                                            bottom: 6,
                                            left: 4,
                                            right: 3),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Add Cash",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "₹0",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Image.asset(
                                              "assets/image/plus.png",
                                              height: 18,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                        ],
                        title: Row(
                          children: [
                            Image.asset(
                              "assets/image/applogo.png",
                              height: 30,
                            ),
                            Text(
                              " CRICSTRIKE",
                            ),
                          ],
                        ),
                        leading: Padding(
                          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://w7.pngwing.com/pngs/420/567/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png",
                            ),
                          ),
                        ),
                        backgroundColor: Color(0xff021852),
                      ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              padding: navigatorController.NavigatIndex.value == 2||navigatorController.NavigatIndex.value == 3||navigatorController.NavigatIndex.value == 4                  ? EdgeInsets.symmetric(horizontal: 0)
                  : EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
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
              child: Obx(() => navigatorController
                  .Screens[navigatorController.NavigatIndex.value]),
            ),
            bottomNavigationBar: Obx(
              () => BottomNavigationBar(
                unselectedItemColor: Colors.white60,selectedItemColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                currentIndex: navigatorController.NavigatIndex.value,
                showUnselectedLabels: true,
                onTap: (value) {
                  navigatorController.NavigatIndex.value = value;
                },
                backgroundColor: Color(0xff021852),
                items: [
                  BottomNavigationBarItem(
                    activeIcon:
                        Image.asset("assets/image/activehome.png", height: 25),
                    backgroundColor: Color(0xff021852),
                    icon: Image.asset("assets/image/home.png", height: 25),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activecricket.png",
                          height: 25),
                      icon: Image.asset("assets/image/cricket.png", height: 25),
                      label: "Cricket"),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activenews.png",
                          height: 26),
                      icon: Image.asset("assets/image/news.png", height: 22),
                      label: "News"),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon:
                          Image.asset("assets/image/activepre.png", height: 27),
                      icon: Image.asset("assets/image/pre.png", height: 24),
                      label: "Predicition"),
                  BottomNavigationBarItem(
                      backgroundColor: Color(0xff021852),
                      activeIcon: Image.asset("assets/image/activegames.png",
                          height: 25),
                      icon: Image.asset("assets/image/game.png", height: 25),
                      label: "Game"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
