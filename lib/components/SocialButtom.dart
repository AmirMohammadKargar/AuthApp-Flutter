import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart' as cust;

class SocialButtom extends StatelessWidget {
  const SocialButtom({Key key, this.iconName}) : super(key: key);
  final String iconName;
  void printf() {
    print(iconName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        onPressed: () {
          printf();
        },
        elevation: 2.0,
        fillColor: Colors.white,
        child: Row(
          children: <Widget>[
            iconName == 'facebook'
                ? Icon(
                    cust.MyFlutterApp.facebook_squared,
                    color: Colors.blueGrey,
                  )
                : Icon(
                    cust.MyFlutterApp.google,
                    color: Colors.deepOrange,
                  )
          ],
        ),
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
      ),
    );
  }
}
