import 'package:flutter/material.dart';

class TermsPage extends StatefulWidget {
  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {


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
                                               "Terms & Conditions",
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
               padding: EdgeInsets.fromLTRB(20, 25, 20, 50),
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
               child: Container(
                      margin: EdgeInsets.only(bottom: 15, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                                "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis nibh lacinia at. Vestibulum nec erat ut mi sollicitudin porttitor id sit amet risus. Nam tempus vel odio vitae aliquam. In imperdiet eros id lacus vestibulum vestibulum.",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),

                          Container( 
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                                "Suspendisse fermentum sem sagittis ante venenatis egestas quis vel justo. Maecenas semper suscipit nunc, sed aliquam sapien convallis eu. Nulla ut turpis in diam dapibus consequat. Suse fermentum sem sagittis ante venenatis egestas quis vel justo. Maecenas semper suscipit nunc, sed aliquam sapien convallis eu. Nulla ut turpis in diam dapibus consequat.",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),

                          Container(
                            child: Text(
                                "dapibus consequat. Suse fermentum sem sagittis ante venenatis",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),
                        ],
                      ),
                    )
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