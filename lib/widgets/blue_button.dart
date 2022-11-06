import 'package:flutter/material.dart';

class Blue_button extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const Blue_button({
    Key? key,
    required this.icon,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            minimumSize: Size.fromHeight(30)
        ),
        onPressed: onClicked,
        child: buildContent(),
      );

  Widget buildContent() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 28,),
      SizedBox(
        width: 16,
      ),
      Text(text,
      style: TextStyle(fontSize: 22, color: Colors.white),)
    ],
  );

}
