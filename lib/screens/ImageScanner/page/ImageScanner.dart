import 'package:bulanut_mobile_v5/screens/ImageScanner/Button_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ImageScanner extends StatefulWidget {
  @override
  _ImageScannerState createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
  String qrCode = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200),
        Center(child: ButtonWidget(text: "Taramayı Başlat", onClicked:()=> scanImageCode(), color: Colors.black26)),
      ],
    );
  }

  Future<void> scanImageCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'KAPAT',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode.isEmpty
            ? ''
            : qrCode == '-1'
            ? ''
            : qrCode;
      });
    } on PlatformException {
       qrCode = 'İşlem Başarısız => Server Hatası';
    }
  }
}


