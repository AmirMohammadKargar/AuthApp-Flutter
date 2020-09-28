import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  const Textinput({Key key, this.type}) : super(key: key);
  final String type;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.deepPurple[50],
          borderRadius: BorderRadius.circular(29)),
      child: TextField(
        decoration: InputDecoration(
            icon: type == 'Email'
                ? Icon(Icons.person, color: Colors.purple[600])
                : Icon(Icons.lock, color: Colors.purple[600]),
            hintText: '$type'),
      ),
    );
  }
}
