import 'package:flutter/material.dart';
import 'package:porium_app/onboaarding_two.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({Key? key}) : super(key: key);

  @override
  _OnboardingThreeState createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
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
              image: AssetImage("assets/payment.png"),
            ),
          ),

          Text(
            "Payment",
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
              "Payment systems are indispensable to our lives as "
                  "individuals and to the smooth functioning of the economy. "
                  "They allow money to fulfill its role of accepted means of "
                  "exchange when purchasing goods or services.,",
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
                MaterialPageRoute(builder: (context) => OnboardingTwo()),
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
            onTap: () async {
              final url = 'https://mobileapp.poriumpay.com/mobile-application/';

              if(await canLaunch(url)){
                await launch(
                  url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true
                );
              }
    },
            // {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => Home()),
            //   );
            // },
            child: Container(
              width: 135,
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
                    "Get Started",
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
