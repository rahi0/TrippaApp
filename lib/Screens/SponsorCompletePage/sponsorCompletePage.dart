import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/EndTripSplashPage/endTripSplashPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';


class SponsorCompletePage extends StatefulWidget {
  @override
  _SponsorCompletePageState createState() => _SponsorCompletePageState();
}

class _SponsorCompletePageState extends State<SponsorCompletePage> {


  double animhight = 0.0 ;
  Color animColor = Colors.white;
  @override
  void initState() {
    anim();
    super.initState();
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
     animhight = MediaQuery.of(context).size.height; 
     animColor = Color(0XFFFF9100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      
      body: SafeArea(
        child: Column(
          children: <Widget>[


           //////////// Form Body start ///////////////
           
           Expanded(
             child: AnimatedContainer(
               duration: Duration(milliseconds: 300),
               curve: Curves.easeInOut,
              // alignment: Alignment.center,
               width: MediaQuery.of(context).size.width,
               //margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
               decoration: BoxDecoration(
                 color:  Color(0xFFF5F5F5),
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: Container(
                 //color: Colors.red,
                 alignment: Alignment.center,
                 padding: EdgeInsets.all(20),
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                    Container(
                      child: Text(
                                                     "Congratulations!",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 26,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),

                    
                     //////////////////////////// For Text Add START///////////////////
                    Container(
                      height: MediaQuery.of(context).size.width/2.4,
                      width: MediaQuery.of(context).size.width/1.3,
                      margin: EdgeInsets.only(bottom: 20, top: 25),
                       decoration: BoxDecoration(
                                                  //color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/congo.png'),
                                                  fit: BoxFit.contain,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),
                    //////////////////////////// For Text Add eND///////////////////


                    Container(
                    margin: EdgeInsets.only(top:0, bottom: 3),
                    child: Text(
                                                   "You received",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8B8B8B),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                  Container(
                    child: Text(
                                                   "950 Points",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF565656),
                                                          fontFamily: "Poppins",
                                                          fontSize: 32,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top:3,),
                    child: Text(
                                                   "From Samsung",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8B8B8B),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                     ],
                   ),
                 ),
               )

               /////////////////////// Changeable widget end /////////////////////////
             ),
           ),

           //////////// Form Body End ///////////////
           



           //////////////// Bottom Part Start////////////////
            
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                 )
               ),
                 child: Column(
                children: <Widget>[


                  Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF979797),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:25, bottom: 9),
                    child: Text(
                                                   "Your trip is not yet completed. Do you want another activity?",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),



                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        //////////////// No Button Start ////////////
                           Expanded(
                             child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                color: Color(0xFFEEEEEE),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.push( context, FadeRoute(page: EndTripSplashPage()));
                                },

                                child: Container(
                                  child: Text(
                                         "No",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF959595),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                ),
                                color: Colors.transparent,
                                //elevation: 4.0,
                                //splashColor: Colors.blueGrey,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(25.0)),
                              )),
                           ),
                            //////////////// No Button Start ////////////
                          

                          SizedBox(width: 20,),

                          //////////////// Accept Button Start ////////////
                           Expanded(
                             child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                color: Color(0xFFFF9100),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: FlatButton(
                                onPressed: (){
                                  //Navigator.pop(context);
                                },

                                child: Container(
                                  child: Text(
                                         "Accept",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                ),
                                color: Colors.transparent,
                                //elevation: 4.0,
                                //splashColor: Colors.blueGrey,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(25.0)),
                              )),
                           ),
                            //////////////// Accept Button Start ////////////
                            

                      ],
                    ),
                  ),


                  //////////////// End Button Start ////////////
                           Container(
                             margin: EdgeInsets.only(top:20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              color: Color(0xFFFFFFFFFF),
                              border: Border.all(color: Color(0xFFE1E1E1),)
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: FlatButton(
                              onPressed: (){
                                Navigator.push( context, FadeRoute(page: EndTripSplashPage()));
                              },

                              child: Container(
                                child: Text(
                                       "End Trip!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF8B8B8B),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                              ),
                              color: Colors.transparent,
                              //elevation: 4.0,
                              //splashColor: Colors.blueGrey,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25.0)),
                            )),
                            //////////////// End Button Start ////////////


                   ],
                 ),
               )
                ],
              ),
            ),
            //////////////// Bottom Part End////////////////
          ],
        ),
      )
    );
  }
}