import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/RegistrationPage/registrationPage.dart';
import 'package:paytrippa_app/Screens/SignInPage/signInPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayTrippa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin{

  bool _visible = false;

  @override
  void initState() {
    anim();     
    super.initState();
  }

  anim()async{
    await Future.delayed(new Duration(seconds: 5));
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
            "assets/anim/payTrippaSplash.flr",
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
                    margin: EdgeInsets.only(top:15),
                    child: Text(
                                                   "Welcome to PayTrippa",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF464646),
                                                          fontFamily: "Poppins",
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:5, bottom: 15),
                    child: Text(
                                                   "Login or Register to start earning points",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
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
                                    Navigator.push( context, FadeRoute(page: SignInPage()));
                                  },

                                  child: Container(
                                    child: Text(
                                           "Login",
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
                          

                          SizedBox(width: 20,),

                          //////////////// Accept Button Start ////////////
                           Expanded(
                             child: Hero(
                               tag: "reg",
                               child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(color: Color(0xFFFF9100), width: 1.5)
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: FlatButton(
                                  onPressed: (){
                                    Navigator.push( context, FadeRoute(page: RegistrationPage()));
                                  },

                                  child: Container(
                                    child: Text(
                                           "Register",
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
                           ),
                            //////////////// Accept Button Start ////////////
                            

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
