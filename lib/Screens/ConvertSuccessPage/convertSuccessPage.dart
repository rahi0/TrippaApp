import 'package:flutter/material.dart';

class ConvertSuccessPage extends StatefulWidget {
  @override
  _ConvertSuccessPageState createState() => _ConvertSuccessPageState();
}

class _ConvertSuccessPageState extends State<ConvertSuccessPage> {
  double animhight = 0.0 ;
  Color animColor = Colors.white;
  @override
  void initState() {
    anim();
    super.initState();
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
     animhight = MediaQuery.of(context).size.height; 
     animColor = Color(0XFFFF9100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9100),
        elevation: 0,
        title: Text(
              "Convert Points",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
      ),
      body: AnimatedContainer(
                      height:  animhight,
                      width: MediaQuery.of(context).size.width,
                      color:  animColor,
                      duration: Duration(milliseconds: 10),
                      curve: Curves.easeInOut,
        child: Stack(
          children: <Widget>[
            

           //////////// Form Body start ///////////////
           
           Center(
             child: AnimatedContainer(
               duration: Duration(milliseconds: 300),
               curve: Curves.easeInOut,
               alignment: Alignment.center,
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                 borderRadius: BorderRadius.all(
                    Radius.circular(10),
                 )
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: Container(
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                    Container(
                      child: Text(
                                                     "Success!",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 26,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),


                    Container(
                      height: MediaQuery.of(context).size.width/2.6,
                      width: MediaQuery.of(context).size.width/2.1,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/ss.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "\$250 has been added to your Trippa Card",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "Your new Trippa Card Balance is",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),


                    //////////////// Amount  Start ////////////
                             Hero(
                               tag: 'dishkiao',
                               child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                  border: Border.all(color: Color(0xFF66EB66),),
                                  color: Color(0xFFE0FFDE),
                                ),
                                margin: EdgeInsets.only(bottom: 24),
                                padding: EdgeInsets.fromLTRB(47, 12,47,13),
                                child: Text(
                                       "\$413",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF4BCF4B),
                                          fontFamily: "Poppins",
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    )),
                             ),
                              //////////////// Amount Start ////////////


                    //////////////// Done Start ////////////
                             Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                color: Color(0xFFFF9100),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              margin: EdgeInsets.only(left: 33, right: 33),
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },

                                child: Container(
                                  child: Text(
                                         "Done",
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
                              //////////////// Done Button Start ////////////


                     ],
                   ),
                 ),
               )

               /////////////////////// Changeable widget end /////////////////////////
             ),
           ),

           //////////// Form Body End ///////////////
          ],
        ),
      )
    );
  }
}