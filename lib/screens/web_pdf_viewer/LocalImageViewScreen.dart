import 'package:inter_dairy/screens/web_pdf_viewer/LocalImageViewBody.dart';
import 'package:inter_dairy/screens/widgets/CustomAppBar.dart';
import 'package:inter_dairy/screens/widgets/CustomBottomNavBar.dart';
import 'package:inter_dairy/screens/widgets/CustomDrawer.dart';
import 'package:inter_dairy/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class LocalImageViewScreen extends StatefulWidget {

  const LocalImageViewScreen({super.key});

  @override
  State<LocalImageViewScreen> createState() => _LocalImageViewScreenState();
}

class _LocalImageViewScreenState extends State<LocalImageViewScreen> {
  double? _progress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(),

      drawer: const CustomDrawer(),

      body: LocalImageViewBody(),

      bottomNavigationBar: const CustomBottomNavBar(selectedMenu: MenuState.profile),

      floatingActionButton: _progress != null? const CircularProgressIndicator() : FloatingActionButton(

        backgroundColor: Color(0xffE3F3FF),
        onPressed: () async {

          /*FileDownloader.downloadFile(
              url: 'https://50thdairyindustryconference.com/WebApp/HITEX_Master_Layout.png',
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