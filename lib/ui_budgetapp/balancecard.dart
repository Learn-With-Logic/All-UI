import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {

  final double amount;
  final String cardnumber;
  final String expirydate;
  final color;

  const BalanceCard({Key? key,required this.amount,required this.cardnumber,required this.expirydate,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Balance',style: TextStyle(fontSize: 18,color: Colors.white),),
            SizedBox(height: 10,),
            Text(amount.toString(),style:TextStyle(fontSize: 30,color: Colors.white)),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardnumber,style:TextStyle(fontSize: 18,color: Colors.white)),
                Text(expirydate,style:TextStyle(fontSize: 18,color: Colors.white)),
              ],)
          ],
        ),
      ),
    );
  }
}
