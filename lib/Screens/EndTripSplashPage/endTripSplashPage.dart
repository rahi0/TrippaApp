import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class EndTripSplashPage extends StatefulWidget {
  @override
  _EndTripSplashPageState createState() => _EndTripSplashPageState();
}

class _EndTripSplashPageState extends State<EndTripSplashPage> with SingleTickerProviderStateMixin{
  bool _visible = false;

  @override
  void initState() {
    anim();     
    super.initState();
  }

  anim()async{
    await Future.delayed(new Duration(milliseconds: 900));
          setState(() {
          _visible = true;
          });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          /////////////// Spalsh ///////////////////
          FlareActor(
            "assets/anim/payTrippaEndSplash.flr",
            alignment: Alignment.center,
            animation: "Untitled",
            fit: BoxFit.cover,
          ),
          //////////////// Splash ////////////////////
          
          //////////////// Bottom Start ////////////////////
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                AnimatedSize(
                    vsync: this,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      child: Container(
              width: MediaQuery.of(context).size.width,
              child: _visible == false? Container() : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                    decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                 )
               ),
                 child: Column(
                children: <Widget>[


                  Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF979797),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 15),
                    child: Text(
                                                   "Enjoy the rest of your ride",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        //////////////// No Button Start ////////////
                           Expanded(
                             child: Hero(
                               tag: "lala",
                               child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  color: Color(0xFFFF9100),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: FlatButton(
                                  onPressed: (){
                                    //Navigator.push( context, FadeRoute(page: SignInPage()));
                                    Navigator.pop(context);
                                  },

                                  child: Container(
                                    child: Text(
                                           "Continue",
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
                           ),
                            //////////////// No Button Start ////////////
                            

                      ],
                    ),
                  ),


                   ],
                 ),
               )
                ],
              ),
            ),
                    ),
                  ),
              ],
            ),
          )
          //////////////// Bottom End ////////////////////
        ],
      ),

    );
  }
}