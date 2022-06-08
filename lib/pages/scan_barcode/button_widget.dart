import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    this.text,
    this.onClicked,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      color: const Color.fromRGBO(121, 40, 202, 30),
      width: 300,
      height: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(121, 40, 202, 30),
            onPrimary: const Color.fromRGBO(121, 40, 202, 30),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          onPressed: onClicked,
        ),
      ));
}
