import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class WebViewFaceBookBody extends StatefulWidget {
  final String weblink;
  const WebViewFaceBookBody({super.key, required this.weblink});

  @override
  State<WebViewFaceBookBody> createState() => _WebViewFaceBookBodyState();
}

class _WebViewFaceBookBodyState extends State<WebViewFaceBookBody> {
 /* final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  bool _isLoading = true;
*/
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*WebView(
          initialUrl: widget.weblink, // Set the URL of the webpage
          javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
          userAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',

          onWebViewCreated: (WebViewController controller) {
            _controller.complete(controller);
          },
          onPageFinished: (String url) {
            // Page has finished loading, update the state to hide the loader
            setState(() {
              _isLoading = false;
            });
          },
        ),*/
        if (_isLoading)
          Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
    /*return WebView(
      initialUrl: 'https://50thdairyindustryconference.com/become-exhibitor',
      javascriptMode: JavascriptMode.unrestricted,
    );*/

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