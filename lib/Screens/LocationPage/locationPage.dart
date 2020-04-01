import 'package:flutter/material.dart';
import 'package:paytrippa_app/customPlugin/customSwitch/customSwitch.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {


  bool _enable = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
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
                "Location",
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
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.grey[300], blurRadius: 3)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ////////////// Location Button Start ///////////////
                      InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 15, bottom: 30),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Location",
                                          style: TextStyle(
                                              color: Color(0xFF464646),
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),


                                      //////////// Switch Button Start ////////////
                                      Container(
                                        child: CustomSwitch(
                                                value: _enable ,
                                                onChanged: (bool val){
                                                    setState(() {
                                                      _enable = val;
                                                    });
                                                },
                                              ),
                                      )
                                      //////////// Switch Button End ////////////
                                      
                                    ],
                                  ),
                                ),




                                /////////////////
                                Container(
                                  margin: EdgeInsets.only(top:10),
                                  child: Text(
                                    "PayTrippa uses your devices location services for matching with your right sponsors",
                                    style: TextStyle(
                                        color: Color(0xFFC1C1C1),
                                        fontFamily: "Poppins",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      ////////////// Location Button End ///////////////
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
