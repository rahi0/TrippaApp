import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/Flowless/flowless.dart';
import 'package:paytrippa_app/Screens/HelpPage/helpPage.dart';
import 'package:paytrippa_app/Screens/InviteFriendsPage/inviteFriendsPage.dart';
import 'package:paytrippa_app/Screens/NotificationPage/notificationPage.dart';
import 'package:paytrippa_app/Screens/ProfilePage/profilePage.dart';
import 'package:paytrippa_app/Screens/SettingPage/settingPage.dart';
import 'package:paytrippa_app/Screens/SponsorSplashPage/sponsorSplashPage.dart';
import 'package:paytrippa_app/Screens/TrippaCardPage/trippaCardPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class DrawerOnly extends StatefulWidget {
  @override
  _DrawerOnlyState createState() => _DrawerOnlyState();
}

class _DrawerOnlyState extends State<DrawerOnly> {


  Container buttonContainer(Icon icons, String title) {
    return Container(
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                   height: 45,
                    child: Row(
                      children: <Widget>[
                        icons,
                        Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
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
                      ],
                    ),
                  ),
              ),

            ],
          ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          
      children: <Widget>[
        new DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0XFFFF9100),
          ),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10,left: 10),
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
                    height: 63,
                    width: 63,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        
                        child: new Text(
                          "Alex Monroe",
                          style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontFamily: "Poppins",
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700),
                        ),
                      ),


                      Container(
                        child: new Text(
                          "(456) 344-9087",
                          style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontFamily: "Poppins",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),

          //////   camera icon  ////////////
          // decoration: new BoxDecoration(
          //     color: Colors.orange
          // ),
        ),


        //  SizedBox(
        //    height: 10,
        //  ),
        

        //////////// Home Button Start////////////////
        
        InkWell(
          onTap: (){

          },
          child: buttonContainer(Icon(Icons.home, color: Color(0XFFFF9100) ) , "Home", )
          ),
        
        //////////// Home Button End////////////////
        

        //////////// Trippa Card Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: TrippaCardPage()));
          },
          child: Hero(
            tag:'dishkiao',
            child: buttonContainer(Icon(Icons.payment, color: Color(0xFF464646), ) , "Trippa Card"))
          ),
        //////////// Trippa Card Button End////////////////

        //////////// profile Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: Profilepage()));
          },
          child: Hero(
            tag: "lala",
            child: buttonContainer(Icon(Icons.person_outline, color: Color(0xFF464646), ) , "Profile", ))
          ),
        //////////// profile Button End////////////////

       

        //////////// Invite Friends Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: InviteFriendsPage()));
          },
          child: buttonContainer(Icon(Icons.people_outline, color: Color(0xFF464646), ) , "Invite Friends", )
          ),
        //////////// Invite Friends Button End////////////////
        
        


        //////////// Notification Button Start////////////////
        InkWell(
          onTap: (){
           Navigator.push( context, FadeRoute(page: NotificationPage()));
          },
          child: buttonContainer(Icon(Icons.notifications_none, color: Color(0xFF464646), ) , "Notification", )
          ),
        //////////// Notification Button End////////////////
        

        //////////// Setting Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: SettingPage()));
          },
          child: Hero(
            tag: "yoyo",
            child: buttonContainer(Icon(Icons.settings, color: Color(0xFF464646),) , "Setting",))
          ),
        //////////// Setting Button End////////////////

       //////////// Help Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: HelpPage()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "Help", )
          ),
        //////////// Help Button End////////////////
        



        //////////// Flowless Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: Flowless()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "Flowless", )
          ),
        //////////// Flowless Button End////////////////

        
        
       

      ],
    ));
  }
}
