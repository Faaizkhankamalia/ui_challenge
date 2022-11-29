import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class TajweedMate extends StatefulWidget {
  const TajweedMate({Key? key}) : super(key: key);

  @override
  State<TajweedMate> createState() => _TajweedMateState();
}

class _TajweedMateState extends State<TajweedMate> {
  List <Color?> colors1=[
Colors.lightBlue,
    Colors.pink,
    Colors.purple,
    Colors.blue,

  ];
  List <Color?> colors2=[
    Colors.lightBlue[300],
    Colors.pinkAccent,
    Colors.purple[300],
    Colors.blue[300],

  ];
  List <String> images=[
    'images/ramzan.jpg',
    'images/ramzan.jpg',
        'images/ramzan.jpg',
        'images/ramzan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(

            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Text("Tajweed Mate",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(),
                    Icon(Icons.currency_bitcoin)
                  ],
                ),

                Container(
              height:140,
              width: 160,
              child:
              Image.asset("images/quran.webp",),
            ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last Read",style: TextStyle(
                            fontWeight: FontWeight.w500,color: Colors.white,fontSize: 16
                        ),),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text('AR-Rehman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),),
                            Spacer(),
                            Container(
                              height:50,
                              width: 50,

                              child: ClipRRect(
                                  borderRadius:BorderRadius.circular(19),
                                  child: Image.asset("images/ramzan.jpg",)),
                            ),

                          ],
                        ),
                        Text("Version No:1",style: TextStyle(fontSize: 16,color: Colors.white),),
                        Row(
                          children: [
                            Text('Go to',style: TextStyle(color: Colors.white,fontSize: 16),),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.navigate_next,color: Colors.white,),
                          ],
                        ),

                      ],
                    ),
                    
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),itemCount:4,itemBuilder: (context,index)=>
                    Container(
                      height: 220,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colors1[index],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       ClipRRect(

                         borderRadius: BorderRadius.circular(17),

                           child: Image.asset(images[index],height: 50,width: 50,)),
                          Spacer(),

                          ClipPath(
                            clipper: WaveClipperTwo(flip: true, reverse: true),
                            child: Container(
                              height: 120,
                              width: double.infinity,
                              color: colors2[index],
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text("Quran",style: TextStyle(color: Colors.white,fontSize: 16),),
                                    Row(
                                      children: [
                                        Text('Go to',style: TextStyle(color: Colors.white,fontSize: 16),),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.navigate_next,color: Colors.white,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                            ),
                          ),
                        ],
                      ),


                      )
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
