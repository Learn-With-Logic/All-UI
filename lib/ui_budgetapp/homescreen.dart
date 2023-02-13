import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/ui_budgetapp/balancecard.dart';
import 'package:untitled/ui_budgetapp/buttoncard.dart';
import 'package:untitled/ui_budgetapp/optioncard.dart';

class HomeScreen_BudgetApp extends StatelessWidget {
  const HomeScreen_BudgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My ',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        ' Card',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        size: 28,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),

            //pagecard
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  BalanceCard(
                    amount: 49500.00,
                    cardnumber: '***785',
                    expirydate: '11/24',
                    color: Colors.red,
                  ),
                  BalanceCard(
                    amount: 19500.00,
                    cardnumber: '***894',
                    expirydate: '10/25',
                    color: Colors.orange,
                  ),
                  BalanceCard(
                    amount: 39500.00,
                    cardnumber: '***343',
                    expirydate: '04/26',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.blue),
            ),
            Spacer(),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCard(icon: Icon(Icons.traffic,),caption: 'Traffic',),
                  ButtonCard(icon: Icon(Icons.share),caption: 'Share',),
                  ButtonCard(icon: Icon(Icons.filter),caption: 'Filter',),



                ],
              ),
            ),
            Spacer(),

            OptionCard(title: 'Statastics', subtitle: 'Payments',icon: Icon(Icons.insert_chart),),
            OptionCard(title: 'Transactions', subtitle: 'All Recent',icon: Icon(Icons.save),),









            //buttons
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade400,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.home,size: 30,),
            Icon(Icons.favorite,size: 30,),
          ],),
        ),
      ),
    );
  }
}
