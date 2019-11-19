import 'package:flutter/material.dart';
import 'constants.dart';

class OverViewCard extends StatelessWidget {
  OverViewCard({@required this.Tag,@required this.amount,@required this.colorName});
  final String Tag;
  final String amount;
  final Color colorName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: colorName,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: colorName.withOpacity(0.5),
                  blurRadius: 13.0,
                  spreadRadius: 3.0,
                  offset: Offset(5.0, 5.0)
                ),
              ]
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$Tag',style: kCardText,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('₹$amount',style: kCardNumber,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({@required this.type,@required this.money,this.color,this.icon});
  final String type;
  final IconData icon;
  final Color color;
  final int money;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10.0,
            spreadRadius: 3.0,
            offset: Offset(10.0, 10.0),
          )
        ], color: Colors.grey[50], borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  color: color,
                ),
                SizedBox(
                  width: 10.0,
                  height: 50.0,
                ),
                Text(
                  '$type',
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                '₹ $money',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
