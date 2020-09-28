import 'package:flutter/material.dart';
import '../../../components/buttom.dart';
import '../../../components/SocialButtom.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 0),
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Please login or sign up to continue using our app.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 50),
            Image(
              image: AssetImage('assets/Login.png'),
            ),
            SizedBox(height: 50),
            Text(
              'Enter via social networks',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SocialButtom(iconName: 'facebook'),
                new SocialButtom(iconName: 'google'),
              ],
            ),
            SizedBox(height: 35),
            Text(
              'or login with email',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 35),
            Buttom(
              text: 'Sign in',
              navigate: '/second',
            ),
          ]),
        ],
      ),
    );
  }
}
