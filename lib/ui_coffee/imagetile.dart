import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[700],
        ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                    'lib/assets/coffeeimages/ante-samarzija-lsmu0rUhUOk-unsplash.jpg'),

            ),
            SizedBox(height: 10,),
            Text('NasCafe',style: TextStyle(color: Colors.white,fontSize: 18),),
            SizedBox(height: 4,),
            Text('Taste Of Inida',style: TextStyle(color: Colors.yellow),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('74.00'),
              Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,

                  ),
                  child: Icon(Icons.add)),


            ],)


          ],
        ),
      ),
    );
  }
}
