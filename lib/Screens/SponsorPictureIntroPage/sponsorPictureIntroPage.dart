import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/SponsorPictureAddPage/sponsorPictureAddPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';


class SponsorPictureIntroPage extends StatefulWidget {
  @override
  _SponsorPictureIntroPageState createState() => _SponsorPictureIntroPageState();
}

class _SponsorPictureIntroPageState extends State<SponsorPictureIntroPage> {


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
                                                     "Sponsored by",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF474747),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),

                    Container(
                      height: 35,
                      width: 145,
                      margin: EdgeInsets.only(bottom: 17, top: 14),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/samsung.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),

                     //////////////////////////// For Text Add START///////////////////
                    Container(
                      height: MediaQuery.of(context).size.width/2.4,
                      width: MediaQuery.of(context).size.width/1.3,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                  //color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/intropic.png'),
                                                  fit: BoxFit.contain,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),
                    //////////////////////////// For Text Add eND///////////////////


                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "Samsung Galaxy 10",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w700),
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
                                                   "You will earn",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                  Container(
                    child: Text(
                                                   "550 Points",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF292929),
                                                          fontFamily: "Poppins",
                                                          fontSize: 32,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top:3, bottom: 33),
                    child: Text(
                                                   "From this sponsorship activity",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
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
                            height: 45,
                            child: FlatButton(
                              onPressed: (){
                                Navigator.push( context, FadeRoute(page: SponsorPictureAddPage()));
                              },

                              child: Container(
                                child: Text(
                                       "Continue",
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