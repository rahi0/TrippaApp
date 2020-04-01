import 'package:flutter/material.dart';

class NotificationPrefPage extends StatefulWidget {
  @override
  _NotificationPrefPageState createState() => _NotificationPrefPageState();
}

class _NotificationPrefPageState extends State<NotificationPrefPage> {

bool pushNotif = false;
bool text = false;


  ////////////////// Adress Button ///////////////
  Container infoButtonContainer( String title, Icon icons) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
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

      icons
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
                                               "Notifications Preferences",
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
          child: Column(
            children: <Widget>[
              //////////////////////// Address Part Start /////////////////////////
        

        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top:20),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              ////////////// Home Adress Button Start ///////////////
              InkWell(
                onTap: (){
                   setState(() {
                       if(pushNotif == false) {
                           pushNotif = true;
                       }else{
                         pushNotif = false;
                       }
                      
                   });
                },
                child: infoButtonContainer("Push Notifications", pushNotif == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                ),
              ////////////// Home Adress Button End ///////////////
              
              SizedBox(height:0.5),

               ////////////// Notifications Button Start ///////////////
             InkWell(
                onTap: (){
                   setState(() {
                       if(text == false) {
                           text = true;
                       }else{
                         text = false;
                       }
                      
                   });
                },
                child: infoButtonContainer("Text Messages", text == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
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
    );
  }
}