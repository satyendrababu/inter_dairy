import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerBody extends StatefulWidget {
  final String pdfUrl;
  final String title;

  const PdfViewerBody({Key? key, required this.pdfUrl, required this.title}) : super(key: key);

  @override
  State<PdfViewerBody> createState() => _PdfViewerBodyState();
}

class _PdfViewerBodyState extends State<PdfViewerBody> {

  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';

  late PDFViewController pdfController;
  bool isLoading = true;

  Future<File?> downloadFile(String url, String filename) async {
    var request = await http.get(Uri.parse(url));

    var bytes = request.bodyBytes;

    var dir = await File('/storage/emulated/0/Download/').create(recursive: true);
    File file = File("${dir.path}/$filename");

    await file.writeAsBytes(bytes);

    return file;
  }

  @override
  Widget build(BuildContext context) {
     return SfPdfViewer.network(
      widget.pdfUrl,
    );
  }
}
