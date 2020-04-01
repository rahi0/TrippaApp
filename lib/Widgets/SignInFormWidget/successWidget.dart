import 'package:flutter/material.dart';

class SuccessWidget extends StatefulWidget {
  @override
  _SuccessWidgetState createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget>{

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
    return Container(
                    // color: Colors.redAccent,
                    padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 25),
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
                                 margin: EdgeInsets.only(bottom: 20),
                                 child: Text(
                                    "Sign in success, will be redirect to homepage",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF8F8F8F),
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                               ),


                         
                       ],
                     ),
                   );
  }
}