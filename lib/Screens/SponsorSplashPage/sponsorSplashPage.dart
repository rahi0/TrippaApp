import 'package:flutter/material.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';


class SponsorSplashPage extends StatefulWidget {
  @override
  _SponsorSplashPageState createState() => _SponsorSplashPageState();
}

class _SponsorSplashPageState extends State<SponsorSplashPage> {

  double animhight = 300 ;
  double animwidth = 300 ;
  double addanimhight = 115 ;
  double addanimwidth = 115 ;
  double addwidth = 39 ;
  double addhight = 39 ;
  bool animpos = false ;
  bool _visible = false ;
  bool _onlyvisible = false ;
  bool _bottomvisible = false ;

  @override
  void initState() {
    anim();     
    super.initState();
  }

  anim()async{
    await Future.delayed(new Duration(milliseconds: 200));
          setState(() {
          animhight = 160;
          animwidth = 160;
          });

    await Future.delayed(new Duration(milliseconds: 900));
          setState(() {
          animhight = MediaQuery.of(context).size.width/1.3;
          animwidth = MediaQuery.of(context).size.width/1.3;
          });
    await Future.delayed(new Duration(milliseconds: 1000));
          setState(() {
          animpos = true;
          _visible = true;
          });
    await Future.delayed(new Duration(milliseconds: 1300));
          setState(() {
            _onlyvisible = true;
          });
    await Future.delayed(new Duration(milliseconds: 300));
          setState(() {
            addhight = 70;
            addwidth = 70;
          });  
    await Future.delayed(new Duration(milliseconds: 400));
          setState(() {
            addanimhight = MediaQuery.of(context).size.width/1.3;
            addanimwidth = MediaQuery.of(context).size.width/1.3;
            _bottomvisible = true;
            addhight = 115;
            addwidth = 115;
          });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFF9100),
      body: Container(
       // color: Colors.red,
        //alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ////////////////////// Uppe3r Text start //////////////////////
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/3.4,
              alignment: Alignment.center,
             // color: Colors.blue,
              child: Text(
                                       '''We are matching you with a 
sponsor for you trip''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
            ),
            ////////////////////// Uppe3r Text start //////////////////////
            


            ////////////////////// Anim Part start //////////////////////
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/1.2,
             // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                   duration: Duration(milliseconds: 900),
                   curve: Curves.easeInOut,
                   width: animwidth,
                   height: animhight,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage("assets/img/ovals.png"),
                       fit: BoxFit.cover
                       )
                   ),

                   child: AnimatedOpacity(
                    // If the widget is visible, animate to 0.0 (invisible).
                    // If the widget is hidden, animate to 1.0 (fully visible).
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 200),
                     child: Stack(
                       children: <Widget>[
                         ///////////////////// Add one Start ////////////////
                        _onlyvisible == true ? Container() : AnimatedPositioned(
                           duration: Duration(milliseconds: 400),
                           curve: Curves.easeInOut,
                           top: animpos ? 20 :0,
                           left: animpos ? 20 : 0,
                           child: ClipOval(
                             child: Container(
                               height: 72,
                               width: 72,
                               decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/saml.png"),
                                  fit: BoxFit.cover
                                  )
                              ),
                             ),
                           ),
                         ),
                         ///////////////////// Add one End ////////////////
                         ///
                         ///////////////////// Add 2 Start ////////////////
                         Positioned(
                           right:  0,
                           top:  0,
                           child: AnimatedContainer(
                             duration: Duration(milliseconds: 400),
                             curve: Curves.easeInOut,
                             //color: Colors.red,
                             height: addanimhight,
                              width:  addanimhight,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 AnimatedContainer(
                                 duration: Duration(milliseconds: 300),
                                 curve: Curves.easeInOut,
                                   height: addhight,
                                   width: addwidth,
                                   child: ClipOval(
                                     child: Image(
                                       image: AssetImage("assets/img/audil.png"),
                                       fit: BoxFit.cover,
                                     ),
                                   )
                                 ),
                               ],
                             ),
                           ),
                         ),
                         ///////////////////// Add 2 End ////////////////
                         

                         ///////////////////// Add 3 Start ////////////////
                         _onlyvisible == true ? Container() : AnimatedPositioned(
                           duration: Duration(milliseconds: 400),
                           curve: Curves.easeInOut,
                           bottom: animpos ? 80 : 0,
                           left: animpos ? 60 : 0,
                           child: Container(
                             height: 33,
                             width: 33,
                             child: ClipOval(
                               child: Image(
                                 image: AssetImage("assets/img/verl.png"),
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                         ),
                         ///////////////////// Add 3 End ////////////////
                         

                         ///////////////////// Add 4 Start ////////////////
                        _onlyvisible == true ? Container() :  AnimatedPositioned(
                           duration: Duration(milliseconds: 400),
                           curve: Curves.easeInOut,
                           bottom: animpos ? 50: 0,
                           right: animpos ? 40: 0,
                           child: Container(
                             height: 43,
                             width: 43,
                             child: ClipOval(
                               child: Image(
                                 image: AssetImage("assets/img/unl.png"),
                                 fit: BoxFit.cover,
                               ),
                             )
                           ),
                         ),
                         ///////////////////// Add 4 End ////////////////
                       ],
                     ),
                   ),
                   ),
                ],
              ),
            ),
            ////////////////////// Anim Part start //////////////////////
            


            ////////////////////// Button Part start //////////////////////
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/3.4,
              //color: Colors.yellow,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: AnimatedOpacity(
                    // If the widget is visible, animate to 0.0 (invisible).
                    // If the widget is hidden, animate to 1.0 (fully visible).
                    opacity: _bottomvisible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                alignment: Alignment.center,
                //color: Colors.blue,
                child: Text(
                                         'Audi is sponsoring your trip',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
            ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          //////////////// No Button Start ////////////
                             Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                color: Color(0xFFFF9100),
                                border: Border.all(color: Color(0xFFFFFFFF))
                              ),
                              width: MediaQuery.of(context).size.width/ 2.8,
                              height: 45,
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },

                                child: Container(
                                  child: Text(
                                         "No",
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
                              //////////////// No Button Start ////////////
                            

                            SizedBox(width: 20,),

                            //////////////// Accept Button Start ////////////
                             Expanded(
                               child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  color: Color(0xFFFFFFFFFF),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: FlatButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },

                                  child: Container(
                                    child: Text(
                                           "Accept it",
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
                              //////////////// Accept Button Start ////////////
                              

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ////////////////////// Button Part start //////////////////////
          ],
        ),
      )
    );
  }
}