import 'package:inter_dairy/screens/web_pdf_viewer/PdfViewerBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_file_downloader/flutter_file_downloader.dart';




class PdfViewerScreen extends StatefulWidget {
  final String url;
  final String title;

  const PdfViewerScreen({super.key, required this.url, required this.title});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  double? _progress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      body: PdfViewerBody(
        pdfUrl: widget.url,
        title: widget.title,
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
      floatingActionButton: _progress != null? const CircularProgressIndicator() : FloatingActionButton(
          backgroundColor: Color(0xffE3F3FF),
        onPressed: () async {

          /*FileDownloader.downloadFile(
              url: widget.url,
              onProgress: (name, progress) {
                setState(() {
                  _progress = progress;
                });
              },
              onDownloadCompleted: (value) {
                print('kya path : $value');
                setState(() {
                  _progress = null;
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("File saved to download folder!"),
                ));
              });*/
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
