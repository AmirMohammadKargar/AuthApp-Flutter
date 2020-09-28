import 'package:flutter/material.dart';
import '../../../components/SocialButtom.dart';
import '../../../components/buttom.dart';
import '../../../components/TextInput.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 45),
      height: size.height,
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Please sign up to enter in a app.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 50),
              Image(
                image: AssetImage('assets/SignUp.png'),
              ),
              SizedBox(height: 30),
              Text(
                'Sign up via social networks',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialButtom(iconName: 'facebook'),
                  SocialButtom(iconName: 'google')
                ],
              ),
              SizedBox(height: 40),
              Text(
                'or sign up with email',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Textinput(
                type: 'Email',
              ),
              Textinput(
                type: 'Password',
              ),
              SizedBox(height: 30),
              Buttom(
                text: 'Sign up',
                navigate: 'pop',
              )
            ],
          )
        ],
      ),
    );
  }
}
