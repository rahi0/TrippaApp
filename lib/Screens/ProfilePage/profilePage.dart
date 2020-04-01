import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/InviteFriendsPage/inviteFriendsPage.dart';
import 'package:paytrippa_app/Screens/ProfileInformationPage/profileInformationPage.dart';
import 'package:paytrippa_app/Screens/WorkAddressPage/workAddressPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {



  ////////////////// Adress Button ///////////////
  Container addressButtonContainer(Icon icons, Color colors, String title) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 10, top: 15, bottom: 15),
     color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            height: 38,
            width: 38,
            margin: EdgeInsets.only(right: 10),
            decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                color: Color(0XFFFF9100),
              ),
            child: icons
            ),
          Expanded(
      child: Container(
    child: new Text(
      title,
      style: TextStyle(
                                      color: colors,
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


  ////////////////// Adress Button ///////////////
  Container infoButtonContainer( String title) {
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

      Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFFDEDEDE),)
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBFBFB),
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9100),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[

            //////////////////////// Additional AppBar start///////////////////
           Container(
             //height: 100,
             width: MediaQuery.of(context).size.width,
             alignment: Alignment.center,
             padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
             decoration: BoxDecoration(
               color: Color(0XFFFF9100),
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(15),
                 bottomRight: Radius.circular(15),
               )
             ),
             child: Column(
               children: <Widget>[
                 ////////////// Picture start //////////////
                 Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                      border: new Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/img/CR7.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                 ////////////// Picture start //////////////
                 
                 ////////////// Name start////////////////
                 Container(
                   child: Text(
                                       "Alex Monroe",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontFamily: "Poppins",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                   ),
                 ////////////// Name end////////////////
                 
                 ////////////// Email start////////////////
                 Container(
                   child: Text(
                                       "alexmonroe@gmail.com",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontFamily: "Poppins",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                   ),
                 ////////////// Email end////////////////
                 

                 ////////////// Number start////////////////
                 Container(
                   child: Text(
                                       "(456) 344-9087",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontFamily: "Poppins",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                   ),
                 ////////////// Number end////////////////
               ],
             )
           ),
           //////////////////////// Additional AppBar part end///////////////////
           



           ///////////////////// Scrollable Part Start ////////////////
           SingleChildScrollView(
             child: Container(
               child: Column(
                 children: <Widget>[
                   //////////////////////// Address Part Start /////////////////////////
             

             Container(
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[

                   ////////////// Home Adress Button Start ///////////////
                   InkWell(
                     onTap: (){

                     },
                     child: addressButtonContainer(Icon(Icons.home, color: Color(0xFFFFFFFF), ) ,Color(0xFF464646), "35 Valley, Huntington Park")
                     ),
                   ////////////// Home Adress Button End ///////////////
                   
                   SizedBox(height: 0.5,),
                   ////////////// Work Adress Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: WorkAddressPage()));
                     },
                     child: addressButtonContainer(Icon(Icons.work, color: Color(0xFFFFFFFF), ) ,Color(0xFF9E9E9E), "Add Work Address")
                     ),
                   ////////////// Work Adress Button End ///////////////
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
                                         "GENERAL INFORMATION",
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
               decoration: BoxDecoration(
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               width: MediaQuery.of(context).size.width,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[

                   ////////////// Profile Information Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: ProfileInformationPage()));
                     },
                     child: infoButtonContainer("Profile Information")
                     ),
                   ////////////// Profile Information Button End ///////////////
                   
                   SizedBox(height: 0.5,),

                   ////////////// Invite Friends Button Start ///////////////
                   InkWell(
                     onTap: (){
                       Navigator.push( context, FadeRoute(page: InviteFriendsPage()));
                     },
                     child: infoButtonContainer("Invite Friends")
                     ),
                   ////////////// Invite Friends Button End ///////////////
                 ],
               ),
             ),

             //////////////////////// Info Part End /////////////////////////
             


             //////////////// Registration Button Start ////////////
                                     Hero(
                                       tag: 'lala',
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
           )
           ///////////////////// Scrollable Part Start ////////////////


            
          ],
        ),
      ),

    );
  }
}