import 'package:flutter/material.dart';
import 'package:moneify/screenspackage/registrationscreen.dart';
import 'package:moneify/screenspackage/loginscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    controller.forward();
    controller.addListener((){
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/icon.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ColorizeAnimatedTextKit(
                  text: ['Moneify'],
                  colors: [
                    Colors.purple,
                    Colors.blue,
                    Colors.yellow,
                    Colors.red,
                  ],
                  textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 300.0,
                  height: 40.0,
                  child: Text(
                    'Log in',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                   Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 300.0,
                  height: 40.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
