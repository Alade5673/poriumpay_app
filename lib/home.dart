import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

// const String homeUrl = "https://www.poriumpay.com/mobile-home";

class _HomeState extends State<Home> {

  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: WebView(
          initialUrl: 'https://www.poriumpay.com/mobile-home',
          javascriptMode: JavascriptMode.unrestricted,
          // onWebViewCreated: (controller){
          //   this.controller = controller;
          // },
          // onWebViewCreated: (WebViewController webViewController) {
          //   _controller = webViewController;
          // },
        ),
      ),
    );
  }
}

