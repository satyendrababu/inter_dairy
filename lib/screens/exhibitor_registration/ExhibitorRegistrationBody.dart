import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ExhibitorRegistrationBody extends StatefulWidget {
  final String weblink;
  const ExhibitorRegistrationBody({super.key, required this.weblink});

  @override
  State<ExhibitorRegistrationBody> createState() => _ExhibitorRegistrationBodyState();
}

class _ExhibitorRegistrationBodyState extends State<ExhibitorRegistrationBody> {

  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse(widget.weblink),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: controller,
        ),
        loadingPercentage < 100
            ? LinearProgressIndicator(
          color: Colors.red,
          value: loadingPercentage / 100.0,
        )
            : Container()
      ],
    );
  }
  bool isFacebookUrl(String url) {
    Uri uri;
    try {
      uri = Uri.parse(url);
      return uri.host == 'www.facebook.com';
    } catch (e) {
      return false;
    }
  }
}