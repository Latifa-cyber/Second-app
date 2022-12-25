import 'package:flutter/material.dart';

import 'VivaMarkPage1.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0x60A663CC),
              Color(0xEEF5F5F5),
              Color(0x203D3DDA),

            ],
          ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text('Welcome',style: TextStyle(
                      fontSize:20,
                      fontFamily: 'MontaguSlab',
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Stack(
                    fit: StackFit.loose,
                    children:[
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        height:70,
                        width:70,
                        decoration:BoxDecoration(
                            image: DecorationImage( image: AssetImage('userImg.png'),fit:BoxFit.cover)
                        ),


                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45,top: 48),
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF42CF83)
                        ),
                      )
                    ]
                )
              ],
            ),
            Image(

              image: AssetImage('home.png'),

            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ Column(

                    children: [
                      OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                height: 33,
                                width: 33,
                                image: AssetImage('markIcon.png'),
                              ),
                              SizedBox(width: 5,),
                              Text('Fill Your Marks',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'MontaguSlab',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF6F2DBD)
                                ),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                color: Color(0xFF6F2DBD),
                              )
                            ],
                          )

                      ),
                      SizedBox(height: 10),
                      OutlinedButton(onPressed: (){
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VivaMarkPage1()));
                        });
                      },
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                height: 31,
                                width: 31,
                                image: AssetImage('graduateIcon.png'),
                              ),
                              SizedBox(width: 19,),
                              Text('Viva Project',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'MontaguSlab',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF6F2DBD)
                                ),),
                              SizedBox(width: 19,),
                              Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                color: Color(0xFF6F2DBD),
                              )
                            ],
                          )

                      ),
                      SizedBox(height: 10),
                      OutlinedButton(onPressed: (){},
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
                              backgroundColor: Color(0xCCB298DC),
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child:Row(
                            children: [
                              Row(
                                children: [
                                  Column(
                                      children:[
                                        Image(
                                          height: 8.5,
                                          width: 8.5,
                                          image: AssetImage('purpleshape1.png'),
                                        ),
                                        Image(
                                          height: 8.5,
                                          width: 8.5,
                                          image: AssetImage('purpleshape1.png'),
                                        ),
                                        Image(
                                          height: 8.5,
                                          width: 8.5,
                                          image: AssetImage('purpleshape1.png'),
                                        )
                                      ]
                                  ),
                                  SizedBox(width: 1,),
                                  Column(
                                      children:[
                                        Image(
                                          height: 8.5,
                                          width: 19,
                                          image: AssetImage('purpleshape2.png'),
                                        )
                                        ,SizedBox(height: 1.5),
                                        Image(
                                          height: 8.5,
                                          width: 19,
                                          image: AssetImage('purpleshape2.png'),
                                        ),
                                        SizedBox(height: 1.5,),
                                        Image(
                                          height: 8.5,
                                          width: 19,
                                          image: AssetImage('purpleshape2.png'),
                                        )
                                      ]
                                  )


                                ],
                              ),
                              SizedBox(width: 5,),
                              Text('See All Projects',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'MontaguSlab',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF6F2DBD)
                                ),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward_ios_rounded,size: 20,
                                color: Color(0xFF6F2DBD),
                              )
                            ],
                          )
                      )],
                  ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
