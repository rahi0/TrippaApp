import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InviteFriendsPage extends StatefulWidget {
  @override
  _InviteFriendsPageState createState() => _InviteFriendsPageState();
}

class _InviteFriendsPageState extends State<InviteFriendsPage> {


  

  //////////////bottom sheet///////////
 void _modalBottomSheetMenu(){
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height/1.6,
            padding: EdgeInsets.only(bottom: 25, top: 20),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Container(
                  height: 4,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF979797),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 24, 20, 14),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                                               "Share your referral code Now!",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontFamily: "Poppins",
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold),
                                                ),
                ),

                ////////////////// Social Button Start //////////////////
                
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 24),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide( color: Color(0xFFBDC2C9), width: 1.0,),
                      top: BorderSide( color: Color(0xFFBDC2C9), width: 1.0,),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          runSpacing: 10,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){

                              },
                              child: buttonContainer('assets/img/wt.png', "Whtasapp")),


                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/line.png', "Line")),


                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/insta.png', "Instagram")),


                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/msgr.png', "Messenger")),

                              GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/fb.png', "Facebook")),

                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/twt.png', "Twitter")),

                            GestureDetector(
                              onTap: (){
                                
                              },
                              child: buttonContainer('assets/img/gmail.png', "Gmail")),
                          ],
                        ),
                      ),

                      // Container(
                      //   margin: EdgeInsets.only(top:10),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                            
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                ////////////////// Social Button Start //////////////////
                


                ////////////////// tool Button Start //////////////////
                
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: buttonContainer('assets/img/copy.png', "Copy Text")),


                        GestureDetector(
                          onTap: (){
                            
                          },
                          child: buttonContainer('assets/img/url.png', "Copy URL")),


                        GestureDetector(
                          onTap: (){
                            
                          },
                          child: buttonContainer('assets/img/sms.png', "SMS")),


                        GestureDetector(
                          onTap: (){
                            
                          },
                          child: buttonContainer('assets/img/mail.png', "Email")),
                      ],
                    ),
                  ),
                ),

                ////////////////// tool Button Start //////////////////
              ],
            ),
          ),
        );
      }
  //////////////bottom sheet end///////////
  


  ///////////////// Button //////////////////////
Container buttonContainer(String img, String title) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
                                            child: Column(
                                              children: <Widget>[

                                                ///////////// Logo ///////////
                                                Container(
                                                  child: ClipOval(
                                                      child: Image.asset(
                                                        img,
                                                        height: 48,
                                                        width: 48,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                ),
                                                ///////////// Logo ///////////
                                                
                                                ///////////// Title start ////////
                                                Container(
                                                  margin: EdgeInsets.only(top:9),
                                                    child: Text(
                                                      title,
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFF5A5A5A),
                                                              fontFamily: "Poppins",
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                                                  ),
                                                ///////////// Title end /////////
                                              ],
                                            ),
                                          );
  }
/////////////////  Button //////////////////////
  
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
                                               "Invite Friends",
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
                    height: MediaQuery.of(context).size.width/1.8,
                    width: MediaQuery.of(context).size.width/1.6,
                    margin: EdgeInsets.only(bottom: 20),
                     decoration: BoxDecoration(
                                               // color: Colors.red,
                                                image: DecorationImage(image: AssetImage('assets/img/friend.png'),
                                                fit: BoxFit.fill,
                                               // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                )),
                  ),


                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text(
                                                       "Invite a friend to PayTrippa",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFF565656),
                                                              fontFamily: "Poppins",
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                        Text(
                                                       " and receive",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFF565656),
                                                              fontFamily: "Poppins",
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w700),
                                                        ),

                        Text(
                                                       " 500 PayTrippa",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFFFF9100),
                                                              fontFamily: "Poppins",
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                        Text(
                                                       " points.",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFFFF9100),
                                                              fontFamily: "Poppins",
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                                                   "invite your friend to get 500 PayTrippa Points and your friends will get 50 Points after they used your referral code",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8B8B8B),
                                                          fontFamily: "Poppins",
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),




                  ////////////////////// Code Share Button SAtart /////////////////////
                  
                  Container(
                    margin: EdgeInsets.only( left: 30, right: 30, top:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only( bottom:5),
                    child: Text(
                                                   "Share your referral code",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFFFF9100),
                                                          fontFamily: "Poppins",
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),
                        Container(
                                           
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            boxShadow: [BoxShadow(color: Colors.grey[400], blurRadius: 4)],
                                          ),
                                          width: MediaQuery.of(context).size.width,
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(5.0),
                                                      bottomLeft: Radius.circular(5.0)
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: <Widget>[
                                                      Text(
                                                        "ADDFGFHG11",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                color: Color(0xFF5B5B5B),
                                                                fontFamily: "Poppins",
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.w700),
                                                          ),

                                                          //////////// Copy Button Start//////////////
                                                        InkWell(
                                                          onTap: (){
                                                          },
                                                          child: Icon(Icons.content_copy,color: Color(0xFF5B5B5B),)
                                                          )
                                                          //////////// Copy Button End//////////////
                                                    ],
                                                  ),
                                                ),
                                                ),


                                                //////////// Share Button Start//////////////
                                              Expanded(
                                                child: InkWell(
                                                  onTap: _modalBottomSheetMenu,
                                                  child: Container(
                                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFF9100),
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(5.0),
                                                        bottomRight: Radius.circular(5.0)
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Share Now",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(0xFFFFFFFF),
                                                              fontFamily: "Poppins",
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                                                  ),
                                                ),
                                                )

                                                //////////// Share Button End//////////////
                                            ],
                                          ),
                                          ),
                      ],
                    ),
                  ),
                  
                  ////////////////////// Code Share Button End /////////////////////


                ],
              ),
            ),
          ),
        ),
        ),
    );
  }


  // copyButton(){
  //   Clipboard.setData(new ClipboardData(text: "record.name"));
  //  Scaffold.of(context).showSnackBar(SnackBar
  //    (content: Text('text copied')));
  // }
}


