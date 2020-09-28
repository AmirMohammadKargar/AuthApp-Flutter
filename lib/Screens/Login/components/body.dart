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
                    'Login Now',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Please login to continue using our app.',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 50),
              Image(
                image: AssetImage('assets/SignIn.png'),
              ),
              SizedBox(height: 30),
              Text(
                'Enter via social networks',
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
                'or login with email',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Textinput(
                type: 'Email',
              ),
              Textinput(
                type: 'Password',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {},
                    child: Text('Forget password?'),
                  )
                ],
              ),
              Buttom(
                text: 'Login',
                navigate: 'pop',
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don’t have an acoount ?'),
                  FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () {
                      Navigator.pushNamed(context, '/third');
                    },
                    child: Text('Sign up'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
