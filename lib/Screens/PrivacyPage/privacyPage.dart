import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/LocationPage/locationPage.dart';
import 'package:paytrippa_app/Screens/NotificationPrefPage/notificationPrefPage.dart';
import 'package:paytrippa_app/Screens/PersonalInformationPage/personalInformationPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {


  
  ////////////////// columnButtonContainer Button ///////////////
  Container columnButtonContainer(String title,  String subtitle) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 10, top: 15, bottom: 15),
     color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
    child: new Text(
          title,
          style: TextStyle(
                                          color: Color(0xFF464646),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
    ),
          ),

       Container(
    child: new Text(
          subtitle,
          style: TextStyle(
                                          color: Color(0xFFC1C1C1),
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
    ),
          ),          
        ],
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
                                               "Privacy",
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
        
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
             child: Container(
               child: Column(
                 children: <Widget>[
                   //////////////////////// Address Part Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(top:20),
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[

                   ////////////// Location Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: LocationPage()));
                     },
                     child: columnButtonContainer("Location", "Update your location sharing preferences")
                     ),
                   ////////////// Location Button End ///////////////
                   

                   SizedBox(height:0.5),

                   ////////////// Personal Information Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: PersonalInformationPage()));
                     },
                     child: columnButtonContainer("Personal Information", "Update what personal information you would like to share with us")
                     ),
                   ////////////// Personal Information Button End ///////////////
                   
                   SizedBox(height:0.5),

                    ////////////// Notifications Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: NotificationPrefPage()));
                     },
                     child: columnButtonContainer("Notifications", "Update what type of notifications you would like to receive")
                     ),
                   ////////////// Notifications Button End ///////////////
                   
                 ],
               ),
             ),

             //////////////////////// Address Part End /////////////////////////
             

                 ],
               ),
             ),
           ),
        ),
    );
  }
}