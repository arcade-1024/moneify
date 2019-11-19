import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0,bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RoundButton(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  RawMaterialButton RoundButton() {
    return RawMaterialButton(
                    child: Icon(Icons.add),
                    onPressed: (){},
                    elevation: 6.0,
                    constraints: BoxConstraints.tightFor(
                      width: 56.0,
                      height: 56.0
                    ),
                    shape: CircleBorder(),
                    fillColor: Color(0xFF4C4F5E),
                  );
  }
}
