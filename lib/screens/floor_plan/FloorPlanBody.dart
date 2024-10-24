import 'package:inter_dairy/screens/exhibitor_registration/ExhibitorRegistrationScreen.dart';
import 'package:inter_dairy/screens/web_pdf_viewer/LocalImageViewScreen.dart';
import 'package:inter_dairy/screens/web_pdf_viewer/PdfViewerScreen.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:inter_dairy/utils/size_config.dart';
import 'package:flutter/material.dart';

class FloorPlanBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
              'assets/images/home-bg.png',
              fit: BoxFit.cover,
            )
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const TextTitle(text: 'Floor Plan'),
              SizedBox(height: getProportionateScreenHeight(25)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const PdfViewerScreen(
                          url: 'https://50thdairyindustryconference.com/WebApp/hall_1_layout.pdf', title: '',)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'Hall 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const PdfViewerScreen(
                          url: 'https://50thdairyindustryconference.com/WebApp/Hall_3_layout.pdf', title: '',)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'Hall 3',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const PdfViewerScreen(
                          url: 'https://50thdairyindustryconference.com/WebApp/Hall_4_layout.pdf', title: '',)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'Hall 4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                        const LocalImageViewScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          'Master layout',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ),
            ],
          ),
        )
      ],
    );
  }


}