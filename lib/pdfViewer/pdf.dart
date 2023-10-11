import 'dart:io';

import 'package:flutter/material.dart';
import 'package:levelupindia/pdfViewer/page/pdf_viewer_page.dart';
import 'package:levelupindia/pdfViewer/widget/button_widget.dart';

import 'api/pdf_api.dart';

class pdf extends StatefulWidget {
  @override
  _pdfState createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'Asset PDF',
              onClicked: () async {
                final path = 'assets/sample.pdf';
                final file = await PDFApi.loadAsset(path);
                openPDF(context, file);
              },
            ),
            const SizedBox(height: 16),
            ButtonWidget(
              text: 'File PDF',
              onClicked: () async {
                final file = await PDFApi.pickFile();

                if (file == null) return;
                openPDF(context, file);
              },
            ),
            const SizedBox(height: 16),
            // ButtonWidget(
            //   text: 'Network PDF',
            //   onClicked: () async {
            //     final url =
            //         'https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf';
            //     final file = await PDFApi.loadNetwork(url);
            //     openPDF(context, file);
            //   },
            // ),
            const SizedBox(height: 16),
            // ButtonWidget(
            //   text: 'Firebase PDF',
            //   onClicked: () async {
            //     final url = 'sample.pdf';
            //     final file = await PDFApi.loadFirebase(url);
            //
            //     if (file == null) return;
            //     openPDF(context, file);
            //   },
            // ),
          ],
        ),
      ),
    ),
  );

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
}
