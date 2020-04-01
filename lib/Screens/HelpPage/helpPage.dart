import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/SponsorshipPage/sponsorshipPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {



  //////////////////  Button ///////////////
  Container buttonContainer(String icons, String title) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 10, top: 15, bottom: 15),
     margin: EdgeInsets.only(bottom: 13),
     color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                                               // color: Colors.red,
                                                image: DecorationImage(image: AssetImage(icons),
                                                fit: BoxFit.fill,
                                               // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                )),
            ),
          Expanded(
      child: Container(
    child: new Text(
      title,
      style: TextStyle(
                                      color: Color(0xFF464646),
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
    ),
      ),
          ),

      Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFFDEDEDE),)
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      // leading: Container(
                      //     margin: EdgeInsets.only(left: 18),
                      //     child: BackButton(color: Colors.white)),
                      //expandedHeight: 120.0,
                      floating: true,
                      pinned: true,
                      backgroundColor: Color(0xFFFF9100),
                       title: Text(
                                               "Help",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xFFFFFFFF),
                                                      fontFamily: "Poppins",
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700),
                                                ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                    ),
                  ];
                },
        
        body: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.only(top: 45, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    height: MediaQuery.of(context).size.width-170,
                    width: MediaQuery.of(context).size.width-140,
                    margin: EdgeInsets.only(bottom: 20),
                     decoration: BoxDecoration(
                                               // color: Colors.red,
                                                image: DecorationImage(image: AssetImage('assets/img/help.png'),
                                                fit: BoxFit.fill,
                                               // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                )),
                  ),


                  Container(
                    child: Text(
                                                   "PayTrippa Help",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF565656),
                                                          fontFamily: "Poppins",
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 30),
                    padding: EdgeInsets.only(left: 33, right: 33),
                    child: Text(
                                                   "Choose Category and ask to our Customer Support, you will soon hear from us!",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8B8B8B),
                                                          fontFamily: "Poppins",
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),





                  //////////////////////// Sponsorships Button Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 2)],
               ),
               child: InkWell(
                 onTap: (){
                   Navigator.push( context, FadeRoute(page: SponsorshipPage()));
                 },
                 child: buttonContainer('assets/img/sponsor.png' , "Sponsorships")
                 ),
             ),

             //////////////////////// Sponsorships Button End /////////////////////////
             

             //////////////////////// Points and Fare Button Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 2)],
               ),
               child: InkWell(
                 onTap: (){
                   //Navigator.push( context, FadeRoute(page: WorkAddressPage()));
                 },
                 child: buttonContainer('assets/img/points.png' , "Points and Fare")
                 ),
             ),

             //////////////////////// Points and Fare Button End /////////////////////////
             


             //////////////////////// Issues during trips Button Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 2)],
               ),
               child: InkWell(
                 onTap: (){
                   //Navigator.push( context, FadeRoute(page: WorkAddressPage()));
                 },
                 child: buttonContainer('assets/img/issue.png' , "Issues during trips")
                 ),
             ),

             //////////////////////// Issues during trips Button End /////////////////////////
             

             //////////////////////// Promotions Button Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 2)],
               ),
               child: InkWell(
                 onTap: (){
                   //Navigator.push( context, FadeRoute(page: WorkAddressPage()));
                 },
                 child: buttonContainer('assets/img/promo.png' , "Promotions")
                 ),
             ),

             //////////////////////// Promotions Button End /////////////////////////
                ],
              ),
            ),
          ),
        ),
        ),
    );
  }
}