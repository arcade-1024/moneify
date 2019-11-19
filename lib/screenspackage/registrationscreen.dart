import 'package:flutter/material.dart';
import 'package:moneify/screenspackage/loginscreen.dart';


class RegistrationScreen extends StatefulWidget {
  static String id = 'RegistrationScreen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/icon.png'),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              onChanged: (String Val){

              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                hintText: 'Enter your Email ',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purpleAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              onChanged: (String val) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                hintText: 'Enter your Password ',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purpleAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              onChanged: (String val) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                hintText: 'Confirm your Password ',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purpleAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
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
                    Navigator.pushNamed(context, LoginScreen.id);
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
