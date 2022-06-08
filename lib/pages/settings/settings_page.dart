import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'setttings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController sx = Get.put(SettingsController());
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            GradientText(
              'Settings',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              colors: const [
                Color.fromRGBO(121, 40, 202, 30),
                Color.fromRGBO(0, 112, 243, 30),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey, endIndent: 1, indent: 1),
            const SizedBox(height: 10),
            GradientText(
              'Packages',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              colors: const [
                Colors.white,
                Colors.white,
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '@walletconnect/sign-client',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  '2.0.0-beta.100',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '@walletconnect/utils',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  '2.0.0-beta.100',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '@walletconnect/types',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  '2.0.0-beta.100',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey, endIndent: 1, indent: 1),
            const SizedBox(height: 10),
            GradientText(
              'Testnets',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              colors: const [
                Colors.white,
                Colors.white,
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Obx will rebuild Text & Switch when "on" observable changes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Switch(
                      onChanged: (val) => sx.toggle(),
                      value: sx.on.value,
                    ),
                  ),
                  Obx(() => Text('${sx.on}')),
                ],
              )
            ]),
            const Divider(color: Colors.grey, endIndent: 1, indent: 1),
            const Text(
              "Warning: mnemonics and secret keys are provided for development purposes only and should not be used elsewhere!",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent),
            ),
            const SizedBox(height: 10),
            GradientText(
              'EIP155 Mnemonic',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              colors: const [
                Colors.white,
                Colors.white,
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              width: 300,
              height: 100,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: const Text(
                "horn cave van know post donkey nature uniform pigeon supply fame exotic",
                style: TextStyle(
                    fontSize: 18, color: Colors.white, letterSpacing: 1.0),
                textAlign: TextAlign.start,
              ),
            ),
            GradientText(
              'Cosmos Mnemonic',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              colors: const [
                Colors.white,
                Colors.white,
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              width: 300,
              height: 100,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: const Text(
                "judge honey galaxy impact infant rather prepare asset find battle come draw",
                style: TextStyle(
                    fontSize: 18, color: Colors.white, letterSpacing: 1.0),
                textAlign: TextAlign.start,
              ),
            ),
            GradientText(
              'Solana Secret Key',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              colors: const [
                Colors.white,
                Colors.white,
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              width: 300,
              height: 200,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: const Text(
                "39,234,85,127,208,102,100,135,9,108,235,170,59,254,8,120,161,120,27,93,126,110,91,141,166,93,9,107,126,219,221,32,86,247,124,42,21,171,106,73,177,25,186,181,208,175,84,206,225,158,11,147,120,31,223,49,75,100,155,252,92,210,188,61",
                style: TextStyle(
                    fontSize: 17, color: Colors.white, letterSpacing: 1.0),
                textAlign: TextAlign.start,
              ),
            )
          ])
    ]);
  }
}
