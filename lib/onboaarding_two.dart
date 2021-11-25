import 'package:flutter/material.dart';
import 'package:porium_app/onboarding.dart';
import 'package:porium_app/onboarding_three.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

  @override
  _OnboardingTwoState createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Image(
              height: 400.00,
              width: 400.00,
              image: AssetImage("assets/log.png"),
            ),
          ),
          Text(
            "Logistics",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Improved logistics makes your goods more accessible "
                  "to a broader audience, sensible company leaders see "
                  "it as a critical instrument for delivering value for consumers.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.none,
                  height: 2.1
              ),
            ),
          ),

          _buttons()
        ],
      ),
    );
  }

  _buttons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Onboarding()),
              );
            },
            child: Container(
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.yellow,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                  ),

                  Text(
                    "Back",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.none
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingThree()),
              );
            },
            child: Container(
              width: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.yellow,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                        decoration: TextDecoration.none
                    ),
                  ),

                  Icon(
                    Icons.arrow_forward,
                    size: 40,
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
