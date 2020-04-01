import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/PrivacyPage/privacyPage.dart';
import 'package:paytrippa_app/Screens/TermsPage/termsPage.dart';
import 'package:paytrippa_app/Screens/UpdateProfilePage/updateProfilePage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {


  
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


  ////////////////// Adress Button ///////////////
  Container infoButtonContainer( String title, String subtitle,) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 10, top: 10, bottom: 10),
     color: Colors.white,
      child: Row(
        children: <Widget>[
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

      Container(
        child: Row(
          children: <Widget>[
            Container(
    child: new Text(
      subtitle,
      style: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                        ),
                          ),

            Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFFDEDEDE),),
          ],
        ),
      )
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
                                               "Setting",
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

                   ////////////// Update Profile Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: UpdateProfilePage()));
                     },
                     child: columnButtonContainer("Update Profile", "Update Profile picture, Name, and Phone number")
                     ),
                   ////////////// Update Profile Button End ///////////////
                   
                 ],
               ),
             ),

             //////////////////////// Address Part End /////////////////////////
             



                  ////////////// Number start////////////////
                   Container(
                     alignment: Alignment.centerLeft,
                     margin: EdgeInsets.only(top:15, bottom: 15, left: 20),
                     width: MediaQuery.of(context).size.width,
                     child: Text(
                                         "ACTIVITY PREFERENCES",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xFFA5A5A5),
                                                fontFamily: "Poppins",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                     ),
                   ////////////// Number end////////////////



             //////////////////////// Info Part Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[

                   ////////////// 1st Preference Button Start ///////////////
                   InkWell(
                     onTap: (){
                       //Navigator.push( context, FadeRoute(page: ProfileInformationPage()));
                     },
                     child: infoButtonContainer("1st Preference", 'Advertisement')
                     ),
                   ////////////// 1st Preference Button End ///////////////
                   
                   SizedBox(height: 0.5,),

                   ////////////// 2nd Preference Button Start ///////////////
                   InkWell(
                     onTap: (){
                       
                     },
                     child: infoButtonContainer("2nd Preference", 'Product Reviews')
                     ),
                   ////////////// 2nd Preference Button End ///////////////
                   
                   SizedBox(height: 0.5,),

                   ////////////// 3rd Preference Button Start ///////////////
                   InkWell(
                     onTap: (){
                       
                     },
                     child: infoButtonContainer("3rd Preference", 'Surveys')
                     ),
                   ////////////// 3rd Preference Button End ///////////////
                 ],
               ),
             ),

             //////////////////////// Info Part End /////////////////////////
             

             SizedBox(height: 22,),
             //////////////////////// Info2 Part Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[

                   ////////////// Privacy Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: PrivacyPage()));
                     },
                     child: columnButtonContainer("Privacy", 'Choose what data you want to share with us')
                     ),
                   ////////////// Privacy Button End ///////////////
                   
                   SizedBox(height: 0.5,),

                   ////////////// Terms & Conditions Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: TermsPage()));
                     },
                     child: infoButtonContainer("Terms & Conditions", '')
                     ),
                   ////////////// Terms & Conditions Button End ///////////////
                 ],
               ),
             ),

             //////////////////////// Info2 Part End /////////////////////////

             //////////////// Registration Button Start ////////////
                                     Hero(
                                       tag: 'yoyo',
                                       child: Container(
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
                                               "Sign Out",
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
                                     ),
                                      //////////////// Registartion Button Start ////////////
                 ],
               ),
             ),
           ),
        ),
    );
  }
}