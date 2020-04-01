import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/TrippaCardPage/trippaCardPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';



class NoSponsorPage extends StatefulWidget {
  @override
  _NoSponsorPageState createState() => _NoSponsorPageState();
}

class _NoSponsorPageState extends State<NoSponsorPage> {
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
      backgroundColor: Colors.grey[50],
      body: AnimatedContainer(
                      height:  animhight,
                      width: MediaQuery.of(context).size.width,
                      color:  animColor,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
        child: Stack(
          children: <Widget>[
            

           //////////// Form Body start ///////////////
           
           Center(
             child: AnimatedContainer(
               duration: Duration(milliseconds: 800),
               curve: Curves.easeInOut,
               alignment: Alignment.center,
               height: MediaQuery.of(context).size.height/1.5,
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                 borderRadius: BorderRadius.all(
                    Radius.circular(10),
                 )
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: Container(
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                    Container(
                      child: Text(
                                                     "Oops!",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 26,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),


                    Container(
                      height: MediaQuery.of(context).size.width/2.6,
                      width: MediaQuery.of(context).size.width/2.0,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/oops.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 30),
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "We did not find a sponsor for this trip. See you in your next trip",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF8B8B8B),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),



                    //////////////// Done Start ////////////
                           Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              color: Color(0xFFFF9100),
                            ),
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(left: 33, right: 33),
                            height: 45,
                            child: FlatButton(
                              onPressed: (){
                                Navigator.push( context, FadeRoute(page: TrippaCardPage()));
                              },

                              child: Container(
                                child: Text(
                                       "Check Trippa Card Balance",
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
                            //////////////// Done Button Start ////////////


                     ],
                   ),
                 ),
               )

               /////////////////////// Changeable widget end /////////////////////////
             ),
           ),

           //////////// Form Body End ///////////////
          ],
        ),
      )
    );
  }
}