import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:porium_app/home.dart';

import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 5), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const Onboarding(),
  //         // builder: (context) => Welcome(),
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Image(
                  height: 500.00,
                  width: 500.00,
                  image: AssetImage("assets/APK.png"),
                ),

                Text(
                  'WELCOME',
                  style: TextStyle(
                      color: HexColor('143784'),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                  ),
                ),
                Text(
                  'To PoriumPay',
                  style: TextStyle(
                      color: HexColor('143784'),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Container(
                      width:150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: HexColor('143784'),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29.0),
                        child: Row(
                          children: const [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none
                              ),
                            ),

                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      )
    );

      // Container(
      //   width: 375,
      //   height: 812,
      //   decoration: const BoxDecoration(
      //       color: Colors.white
      //   ),
      //   child: Stack(children: <Widget>[
      //     Positioned(
      //         top: 200,
      //         left: 0,
      //         child: Container(
      //             width: 400,
      //             height: 400,
      //             child: Stack(children: const <Widget>[
      //               Positioned(
      //                   top: 0,
      //                   left: 5,
      //                   child: Image(
      //                     height: 400.00,
      //                     width: 400.00,
      //                     image: AssetImage("assets/ic_launcher.png"),
      //                   )),
      //             ]))),
      //   ]));
  }
}
