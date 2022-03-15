import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LotesTab extends StatefulWidget {
  LotesTab({Key? key}) : super(key: key);

  @override
  State<LotesTab> createState() => _LotesTabState();
}

class _LotesTabState extends State<LotesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => downloadFile("/lib/screens/semestre22.pdf"),
            child: const Text("Descargar documento")),
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = "Semestre22";
    anchorElement.click();
  }
}
