import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhamadnurdin_stockbit/pages/scan_barcode/button_widget.dart';
import 'package:muhamadnurdin_stockbit/pages/scan_barcode/qr_scan_page.dart';
import 'package:muhamadnurdin_stockbit/pages/scan_barcode/scan_barcode_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ScanBarcodePage extends GetView<ScanBarcodePageController> {
  const ScanBarcodePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            GradientText(
              'WalletConnect',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              colors: const [
                Color.fromRGBO(121, 40, 202, 30),
                Color.fromRGBO(0, 112, 243, 30),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey, endIndent: 1, indent: 1),
            const SizedBox(height: 20),
            DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: Colors.grey,
                strokeWidth: 2,
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(children: [
                      const SizedBox(height: 40),
                      const Icon(
                        Icons.qr_code,
                        color: Colors.grey,
                        size: 120.0,
                      ),
                      ButtonWidget(
                        text: 'Scan QR Code',
                        onClicked: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const QRScanPage(),
                        )),
                      ),
                      const SizedBox(height: 40),
                    ]),
                  ),
                )),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'or use walletconnect uri',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFF131313),
              height: 50.0,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.connect_without_contact,
                              color: Colors.grey,
                            ), // icon is 48px widget.
                          ),
                          hintText: 'e.g wc:a281567bbe4...',
                          hintStyle: TextStyle(fontSize: 11.0)),
                    ),
                  ),
                ],
              ),
            )
          ]),
    ]);
  }
}
