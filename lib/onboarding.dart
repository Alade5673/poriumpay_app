import 'package:flutter/material.dart';

import 'onboaarding_two.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
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
              image: AssetImage("assets/ecom.png"),
            ),
          ),

          Text(
            "Ecommerce",
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
              "With eCommerce, there is no need to have more than one branch,"
                  "just one singular online store allowing you to fully reach customers "
                  "without having to worry about moving locations, you can just manage your "
                  "online business from home.",
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 30, 12.0, 0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingTwo()),
              );
            },
            child: Container(
              width: 115,
              decoration: const BoxDecoration(
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
                children: const [
                  Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
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
