import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/TrippaCardPage/trippaCardPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class SponsorTotalPage extends StatefulWidget {
  @override
  _SponsorTotalPageState createState() => _SponsorTotalPageState();
}

class _SponsorTotalPageState extends State<SponsorTotalPage> {

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


  ///////////////////////List Contant ///////////////
  
  Container listContainer( String img, String point, Color colors){
    return Container(
      padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors))
      ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: 80,
                                  //margin: EdgeInsets.only(bottom: 17, top: 14),
                                  decoration: BoxDecoration(
                                                            // color: Colors.red,
                                                              image: DecorationImage(image: AssetImage(img),
                                                              fit: BoxFit.contain,
                                                              )),
                                ),


                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                                                      point,
                                                                          style: TextStyle(
                                                                              color: Color(0xFF4F4F4F),
                                                                              fontFamily: "Poppins",
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.w700),
                                                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                                                      "Points",
                                                                          style: TextStyle(
                                                                              color: Color(0xFF8B8B8B),
                                                                              fontFamily: "Poppins",
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            );
  }


  ///////////////////

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
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 40),
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                 borderRadius: BorderRadius.all(
                    Radius.circular(10),
                 )
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: Container(
                 padding: EdgeInsets.fromLTRB(33, 10, 33, 10),
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
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


                    Container(
                      height: MediaQuery.of(context).size.width/2.6,
                      width: MediaQuery.of(context).size.width/2.0,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/tt.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),


                    Container(
                      child: Text(
                                                     "You earned",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF8B8B8B),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),

                    Container(
                      child: Text(
                                                     "2,725 Points",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 32,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),


                    Container(
                      child: Text(
                                                     "From your sponsors",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF8B8B8B),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),


                    //////////////////// Point list Start /////////////////////
                    

                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only( top:23),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFFECECEC)
                        )
                      ),

                      child: Column(
                        children: <Widget>[
                          
                          ///////////////
                          
                          listContainer('assets/img/audi.png', "550", Color(0xFFECECEC)),
                          listContainer('assets/img/samsung.png', "950", Color(0xFFECECEC)),
                          listContainer('assets/img/united.png', "1250", Color(0xFFFFFFFF)),
                          ///////////////
                        ],
                      ),
                    ),


                    //////////////////// Point list Start /////////////////////


                    Container(
                      margin: EdgeInsets.only(top: 17,bottom: 17),
                      child: Text(
                                                     "Points can be convert to USD in your Trippa Card Balance",
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
                             margin: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              color: Color(0xFFFF9100),
                            ),
                            width: MediaQuery.of(context).size.width,
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