
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'embosscontainerwidget.dart';

class HomeScreen_Musicplayer extends StatefulWidget {
  const HomeScreen_Musicplayer({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Musicplayer> createState() => _HomeScreen_MusicplayerState();
}

class _HomeScreen_MusicplayerState extends State<HomeScreen_Musicplayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //topbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: EmbossContainerWidget(
                            ontap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back))),
                    Text('P L A Y L I S T'),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: EmbossContainerWidget(
                            ontap: (){},
                            child: Icon(Icons.menu))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                EmbossContainerWidget(
                  ontap: (){},
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'lib/assets/musicplayer/assets/aymaan.jpeg',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Aymaan My Hero.mp3',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Irfan Album',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //playlist options
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        '0.00',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4.25'),
                    ],
                  ),
                ),

                //indicator

                SizedBox(
                  height: 20,
                ),
                EmbossContainerWidget(
                  ontap: (){},
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.80,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 80,
                child:  Row(
                  children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: EmbossContainerWidget(
                        ontap: (){},
                        child: Icon(Icons.skip_previous,size: 30,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: EmbossContainerWidget(
                        ontap: (){},
                        child: Icon(Icons.pause,size: 30),),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: EmbossContainerWidget(
                      ontap: (){},
                      child: Icon(Icons.skip_next,size: 30),),
                  ))
                ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
