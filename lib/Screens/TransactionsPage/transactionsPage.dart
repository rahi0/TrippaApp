import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  bool _visible = false;
  double animhight = 120.0 ;
  Color animColor = Colors.white.withOpacity(0.7);
  @override
  void initState() {
    anim();
    super.initState();
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 500));
    setState(() {
     animhight = 0.0; 
     animColor = Colors.white;
    });
    await Future.delayed(new Duration(milliseconds: 300));
     setState(() {
     _visible = true;
    });
  }


  ////////////////// Trans Card start///////////////
  Container transCardContainer(String img, String title, String date,
      String money, Color colors, String stat) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xFFF7F7F7)))),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: ClipOval(
                      child: Image.asset(
                        img,
                        height: 38,
                        width: 38,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: new Text(
                              title,
                              style: TextStyle(
                                  color: Color(0xFF464646),
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            child: new Text(
                              date,
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFFDEDEDE),)
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text(
                  money,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: colors,
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  stat,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  ////////////////// Trans Card End///////////////
  






  ////////////////// Month Card start///////////////
  Container monthCardContainer(String month) {
    return Container(
            child: Column(
              children: <Widget>[



                ////////////////////////// Date ////////////////////
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: new Text(
                                month,
                                style: TextStyle(
                                    color: Color(0xFF8D8D8D),
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ////////////////////////// Date ////////////////////

                ///////////////////// Tranjiction Start ////////////////
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[300], blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    children: <Widget>[

                      transCardContainer(
                          'assets/img/pointin.png',
                          'PayTrippa Points',
                          "Jan 21, 2020",
                          "+2,725",
                          Color(0xFFFF9100),
                          "Points In"),
                      transCardContainer(
                          'assets/img/lyft.png',
                          'LYFT',
                          "Jan 21, 2020",
                          "-\$35",
                          Color(0xFF464646),
                          "Money Out"),
                      transCardContainer(
                          'assets/img/convert.png',
                          'Converted Points',
                          "Jan 21, 2020",
                          "+\$225",
                          Color(0xFF4ACB51),
                          "Converted Points"),
                    ],
                  ),
                ),
                ///////////////////// Tranjiction End /////////////////
              ],
            ),
          );
  }
  ////////////////// Month Card End///////////////

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
                "Trippa Card",
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

                AnimatedContainer(
                      height:  animhight,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                    ),



                AnimatedOpacity(
                  // If the widget is visible, animate to 0.0 (invisible).
                  // If the widget is hidden, animate to 1.0 (fully visible).
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 400),
                  child: Column(
                    children: <Widget>[
                      monthCardContainer("January 2020"),
                      monthCardContainer("December 2019"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
