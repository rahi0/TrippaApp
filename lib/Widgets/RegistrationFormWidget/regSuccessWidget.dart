import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/HomePage/homePage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class RegSuccessWidget extends StatefulWidget {
  @override
  _RegSuccessWidgetState createState() => _RegSuccessWidgetState();
}

class _RegSuccessWidgetState extends State<RegSuccessWidget>{

  Alignment alignmentos = Alignment.bottomLeft;
  Color colorss = Colors.black.withOpacity(0.0);

  @override
  void initState() {
    super.initState();
    anim() ;
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
    alignmentos = Alignment.center;
    colorss = Colors.black.withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'ohho',
      child: Container(
                      // color: Colors.redAccent,
                      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 40),
                       alignment: Alignment.center,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[

                           Container(
                             width: MediaQuery.of(context).size.width,
                             alignment: Alignment.center,
                             margin: EdgeInsets.only(bottom: 5),
                             child: Text(
                                "Success",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF464646),
                                    fontFamily: "Poppins",
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700),
                              ),
                           ),



                           //////////////// Animated Section Start ////////////
                          Container(
                            // color: Colors.yellow,
                             width: MediaQuery.of(context).size.width,
                             height: 170,
                             margin: EdgeInsets.only(bottom:25, top: 25),
                             child: Stack(
                               alignment: Alignment.center,
                               children: <Widget>[
                                 AnimatedContainer(
                                   alignment: Alignment.center,
                                   duration: Duration(milliseconds: 800),
                                    curve: Curves.easeInOut,
                                            height: 140.0,
                                            width: 155.0,
                                            decoration: BoxDecoration(
                                             // color: Colors.red,
                                              image: DecorationImage(image: AssetImage('assets/img/sback.png'),
                                              fit: BoxFit.fill,
                                             // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                              )),
                                          ),

                                  AnimatedContainer(
                                    width: MediaQuery.of(context).size.width,
                                    height: 150,
                                   // color: Colors.blue,
                                    duration: Duration(milliseconds: 800),
                                    curve: Curves.easeInOut,
                                    alignment: alignmentos,
                                    child:  Container(
                                      width: 80,
                                      height: 80,
                                      child: Image.asset('assets/img/sfront.png'),
                                    )
                                  )
                               ],
                             )
                           ) ,
                            //////////////// Animated Section End ////////////
                            


                          Container(
                                   alignment: Alignment.center,
                                   margin: EdgeInsets.only(bottom: 25),
                                   child: Text(
                                      "Registration success, you are ready to start earning points.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF8F8F8F),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                 ),



                                 //////////////// Registration Button Start ////////////
                                     Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                        color: Color(0xFFFF9100),
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: FlatButton(
                                        onPressed: (){
                                          Navigator.push( context, FadeRoute(page: HomePage()));
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
                                      //////////////// Registartion Button Start ////////////
                           
                         ],
                       ),
                     ),
    );
  }
}