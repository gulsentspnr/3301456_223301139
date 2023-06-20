import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;

  const ButtonWidget({
    @required this.text,
    @required this.onClicked,
    @required this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: onClicked,
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      primary: color,
      onPrimary: Colors.white,
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 24),
    ),
  );
}
