import 'package:flutter/material.dart';

class CatogoryList extends StatefulWidget {


  @override
  State<CatogoryList> createState() => _CatogoryListState();
}

class _CatogoryListState extends State<CatogoryList> {
  List<String> categories=['HandBag','Jwellery','FootWear','Dresses','Pens','Jeans','Trousers'];
  int selectedindex=2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context,index){
          return buildCategory(index);

        }),
      ),
    );
  }

  Widget buildCategory(int index)
  {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedindex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(categories[index],style: TextStyle(fontSize: 20,color: selectedindex==index?Colors.blue:Colors.grey),),
            if(selectedindex==index)
              Container(
              height: 3,color: Colors.blue,),

          ],),
        ),
      ),
    );
  }
}
