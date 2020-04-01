import 'package:flutter/material.dart';
import 'package:paytrippa_app/Forms/SignInForm/signInForm.dart';
import 'package:paytrippa_app/Screens/ConvertPointPage/convertPointPage.dart';
import 'package:paytrippa_app/Screens/ConvertPointPage/convertPointPage.dart';
import 'package:paytrippa_app/Screens/TransactionsPage/transactionsPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class TrippaCardPage extends StatefulWidget {
  @override
  _TrippaCardPageState createState() => _TrippaCardPageState();
}

class _TrippaCardPageState extends State<TrippaCardPage>
    with SingleTickerProviderStateMixin {
  /////////// Animation Start /////////////
  AnimationController _animationController;
  Animation _animation;

  // void mylistener(status) {
  //   if (status == AnimationStatus.completed) {
  //     _animation.removeStatusListener(mylistener);
  //     _animationController.reset();
  //     _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
  //       parent: _animationController,
  //       curve: Curves.fastOutSlowIn,
  //     ));
  //     _animationController.forward();
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));
    // ..addStatusListener(mylistener);

    _animationController.forward();
  }
  /////////// Animation End //////////////

  ////////////////// Balance Card Start///////////////
  Container balanceCardContainer(
      String icons, String amount, String details, String details2) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 4)],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),

      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: ClipOval(
                    child: Image.asset(
                      icons,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: new Text(
                    amount,
                    style: TextStyle(
                        color: Color(0xFF464646),
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),

                // Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFFDEDEDE),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: <Widget>[
                new Text(
                  details,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFBABABA),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  details2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFBABABA),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  ////////////////// Balance Card End///////////////

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
                ///////////////////// Trippa Card Start ////////////////
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) => Transform(
                      transform: Matrix4.translationValues(
                          _animation.value * width, 0.0, 0.0),
                      child: Center(
                        child: Container(
                          height: 220.0,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left:20, right: 20, bottom: 30, top: 30 ),
                          decoration: BoxDecoration(
                              color: Color(0xFFFF9100),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/img/card.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        ),
                          child: Column(
                            children: <Widget>[
                              //////////////////// Logo Start///////////////////
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 107,
                                      decoration: new BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/img/logowhite.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              //////////////////// Logo End///////////////////

                              //////////////////// Sim Start///////////////////
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 34,
                                      width: 40,
                                      decoration: new BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/img/simcard.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              //////////////////// Sim End///////////////////

                              //////////////////// Num & balance Start///////////////////
                              Container(
                                //color: Colors.red,
                                margin: EdgeInsets.only(bottom: 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                            child: new Text(
                                              '****  ****  ****  3332',
                                              style: TextStyle(
                                                  color: Color(0xFFFFFFFF),
                                                  fontFamily: "Poppins",
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.w700),
                                            ),
                                          ),),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Container(
                                            child: new Text(
                                              'Balance',
                                              style: TextStyle(
                                                  color: Color(0xFFFFFFFF),
                                                  fontFamily: "Poppins",
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            child: new Text(
                                              '\$163.00',
                                              style: TextStyle(
                                                  color: Color(0xFFFFFFFF),
                                                  fontFamily: "Poppins",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //////////////////// Num & balance End///////////////////

                              //////////////////// Name & visa Start///////////////////
                              Container(
                                //color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                          child: new Text(
                                            'ALEX MONROE',
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontFamily: "Poppins",
                                                fontSize: 16,
                                                fontWeight:
                                                    FontWeight.w500),
                                          ),
                                        ),
                                    Container(
                                      child: new Text(
                                        '05/25',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),

                                    Container(
                                      height: 18.5,
                                      width: 59,
                                      decoration: new BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/img/visa.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              //////////////////// Name & visa End///////////////////
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ///////////////////// Trippa Card End /////////////////

                ///////////////////// Balance Card Start ////////////////
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      /////////////// POints Card Start ////////////
                      Expanded(
                        child: balanceCardContainer('assets/img/trippa.png',
                            "4,430", "Unconverted ", "PayTrippa Points"),
                      ),
                      /////////////// POints Card End ////////////

                      SizedBox(
                        width: 20,
                      ),

                      /////////////// Doller Card Start ////////////
                      Expanded(
                        child: balanceCardContainer('assets/img/doller.png',
                            "\$1,107", "If Converted", "today"),
                      )
                      /////////////// Doller Card End ////////////
                    ],
                  ),
                ),
                ///////////////////// Balance Card End /////////////////

                ///////////////////// Convert Button Start ////////////////
                Hero(
                  tag: 'dishkiao',
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        color: Color(0xFFFF9100),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push( context, FadeRoute(page: ConvertPointPage()));
                        },
                        child: Container(
                          child: Text(
                            "Convert Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
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
                ///////////////////// Convert Button End /////////////////

                ///////////////////// Tranjiction Button Start ////////////////
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
                      ////////////////////////// Title ////////////////////
                      InkWell(
                        onTap: (){
                          Navigator.push( context, FadeRoute(page: TransactionPage()));
                        },
                        child: Container(
                          color: Color(0xFFFFFFFF),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: new Text(
                                  'Transactions',
                                  style: TextStyle(
                                      color: Color(0xFF464646),
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 25,
                                color: Color(0xFF464646),
                              )
                            ],
                          ),
                        ),
                      ),
                      ////////////////////////// Title ////////////////////

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
                ///////////////////// Tranjiction Button End /////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
