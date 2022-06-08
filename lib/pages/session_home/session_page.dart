import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhamadnurdin_stockbit/pages/session_home/Session_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SessionPage extends GetView<SessionController> {
  const SessionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20), children: <Widget>[
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            GradientText(
              'Sessions',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              colors: const [
                Color.fromRGBO(121, 40, 202, 30),
                Color.fromRGBO(0, 112, 243, 30),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey, endIndent: 1, indent: 1),
            const SizedBox(height: 70),
            const Center(
                child: Text('No session',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey))),
          ])
    ]);
  }
}
