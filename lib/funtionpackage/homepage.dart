import 'package:flutter/material.dart';
import 'package:moneify/utilities/recuringui.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  OverViewCard(amount: '1,00,000',Tag: 'Income', colorName: Color(0xFF3E82FE),),
                  SizedBox(
                    width: 20.0,
                  ),
                  OverViewCard(Tag: 'Expense',amount: '40,000',colorName: Color(0xFFD0021B),),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Recent Activity',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 10.0,
              ),
              Cards(type: 'Shopping', money: 1000,icon: Icons.shopping_cart,color: Colors.red,),
              Cards(type: 'Income', money: 10000,icon: Icons.monetization_on,color: Colors.greenAccent,)
            ],
          ),
        ),
      ),
    );
  }

}
