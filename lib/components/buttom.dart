import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  const Buttom({Key key, this.text, this.navigate}) : super(key: key);
  final String text;
  final String navigate;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.05,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: FlatButton(
            color: Colors.deepPurple[600],
            onPressed: () {
              navigate == 'pop'
                  ? Navigator.pop(context)
                  : Navigator.pushNamed(context, '$navigate');
            },
            child: Text(
              '$text',
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
