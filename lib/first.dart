import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Text>Text1=[
    Text('3 left'),
    Text('2 left'),
    Text('1 left'),

  ];
  List<Text>Text2=[
    Text('1 Done'),
    Text('8 Done'),
    Text('1 Done'),

  ];
  List<IconData>gridicon=[
    Icons.person,
    Icons.work,
    Icons.heart_broken,
    Icons.heart_broken,
  ];
  List <Color?> colors1 =[
    Colors.orange[200],
    Colors.pink[200],
    Colors.purple[200],
    Colors.grey,


  ];

  List <Color?> colors =[
    Colors.orange[400],
    Colors.pink,
    Colors.purple,

  ];
  List <String> name =[
    'person',
    'work',
    'Health',
    'add',
  ];
  GlobalKey<ScaffoldState>_scafflodKey= GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
key: _scafflodKey,
      drawer: Drawer(

      ),




      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => _scafflodKey.currentState?.openDrawer(),
                    child: Container(


                      height: 35,
                      width: 35,
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/amanda.jpg',fit: BoxFit.cover,)),



                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Text('Hi, Amanda!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                  Spacer(),
                  Text(':',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(


                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,


                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.star,color: Colors.white,),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('GO premium!',style: TextStyle(color: Colors.white,wordSpacing: 2,fontSize: 26,fontWeight: FontWeight.w600),)

                        ],
                      ),
                      Text('GEt unlimited access to\nall our features!',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
                    Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 35,
                          width: 35,

                          child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                        ),

                      ],

                    ),
                    ],
                  ),
                ),

              ),
              SizedBox(
                height: 35,
              ),
              Text("Tasks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(
                height: 20,
              ),
             GridView.builder (
               shrinkWrap: true,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,


             ),itemCount: 4, itemBuilder: (context,index)=>
                 Container(

               height: 140,
               width: 160,


               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: colors1[index],



               ),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100,top: 10),

                        child: Icon(gridicon[index],size: 35,),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50,top: 2),
                          child: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                        ),
                     SizedBox(
                       height: 40,
                     ),

                      index==3?
                      Container(

                      )

                     : Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Row(

                          children: [
                            Container(

                              height: 35,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: colors[index],
                              ),
                              child: Text1[index],alignment: Alignment.center,
                            ),
                            Spacer(),
                            Container(
                              height: 35,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Text2[index],alignment: Alignment.center,

                            ),
                          ],
                        ),
                     )

                    ],
                  ),

             ),

             )
            ],
          ),
        ),
      ),


    );
  }
}
