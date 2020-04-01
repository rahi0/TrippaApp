import 'package:flutter/material.dart';

class SponsorPreviewPage extends StatefulWidget {
  @override
  _SponsorPreviewPageState createState() => _SponsorPreviewPageState();
}

class _SponsorPreviewPageState extends State<SponsorPreviewPage> {
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
              "Sponsorship",
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
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
        child: Stack(
          children: <Widget>[
            

           //////////// Form Body start ///////////////
           
           Center(
             child: AnimatedContainer(
               duration: Duration(milliseconds: 800),
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
                                                     "Thank you!",
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
                      width: MediaQuery.of(context).size.width/2.2,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/s1.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),


                    Container(
                      child: Text(
                                                     "You will soon hear from us",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 30),
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "it will take 2x24 hours , Our Customer support will contact you via email",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF8B8B8B),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                    ),


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