import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

class ExhibitorPdfBody extends StatefulWidget {
  final String weblink;
  const ExhibitorPdfBody({super.key, required this.weblink});

  @override
  State<ExhibitorPdfBody> createState() => _ExhibitorPdfBodyState();
}

class _ExhibitorPdfBodyState extends State<ExhibitorPdfBody> {
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
        onNavigationRequest: (request) async {
          // Prepend Google Docs viewer URL for PDF links
          if (await _isPdfLink(request.url)) {
            final googleDocsUrl = 'https://docs.google.com/gview?embedded=true&url=${Uri.encodeComponent(request.url)}';
            controller.loadRequest(Uri.parse(googleDocsUrl));
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse(widget.weblink));
  }

  // Simple check for a PDF link (can be modified for custom conditions)
  Future<bool> _isPdfLink(String url) async {
    return url.contains('pdf') || url.contains('exhibitor-list'); // Add any PDF identifying terms here
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
            : Container(),
      ],
    );
  }
}
