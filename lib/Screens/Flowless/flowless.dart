import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/NoSponsorPage/noSponsorPage.dart';
import 'package:paytrippa_app/Screens/SponsorCompletePage/sponsorCompletePage.dart';
import 'package:paytrippa_app/Screens/SponsorPictureIntroPage/sponsorPictureIntroPage.dart';
import 'package:paytrippa_app/Screens/SponsorSplashPage/sponsorSplashPage.dart';
import 'package:paytrippa_app/Screens/SponsorTotalPage/sponsorTotalPage.dart';
import 'package:paytrippa_app/Screens/SponsorVideoAddPage/sponsorVideoAddPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class Flowless extends StatefulWidget {
  @override
  _FlowlessState createState() => _FlowlessState();
}

class _FlowlessState extends State<Flowless> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 24),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(25.0)),
               color: Color(0xFFFFE1B8),
               border: Border.all(color: Color(0xFFFFB451))
             ),
             width: MediaQuery.of(context).size.width,
             height: 45,
             child: FlatButton(
               onPressed: (){
                                          Navigator.push( context, FadeRoute(page: SponsorVideoAddPage()));
                                        },
               child: Container(
                 child: Text(
                    "Video Add",
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           color: Color(0xFFFF9100),
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




                                     Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                        onPressed: (){
                                          Navigator.push( context, FadeRoute(page: SponsorPictureIntroPage()));
                                        },
                                        child: Container(
                                          child: Text(
                                             "Pictur Add",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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


                                     Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                        onPressed: null,
                                        child: Container(
                                          child: Text(
                                             "Survey Add",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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





                                      Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                       onPressed: (){
                                          Navigator.push( context, FadeRoute(page: SponsorCompletePage()));
                                        },
                                        child: Container(
                                          child: Text(
                                             "Sponsor Complete",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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


                                      Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                       onPressed: (){
                                          Navigator.push( context, FadeRoute(page: NoSponsorPage()));
                                        },
                                        child: Container(
                                          child: Text(
                                             "No sponsor",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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



                                       Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                       onPressed: (){
                                          Navigator.push( context, FadeRoute(page: SponsorTotalPage()));
                                        },
                                        child: Container(
                                          child: Text(
                                             "Total Sponsor",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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






                                      Container(
                                       margin: EdgeInsets.only(left: 20, right: 20, top: 24),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFFE1B8),
                                        border: Border.all(color: Color(0xFFFFB451))
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                       onPressed: (){
                                          Navigator.push( context, FadeRoute(page: SponsorSplashPage()));
                                        },
                                        child: Container(
                                          child: Text(
                                             "Sponsor Splash",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFF9100),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        }
      ),
    );
  }
}