import 'package:flutter/material.dart';
import 'package:paytrippa_app/Forms/SignInForm/signInForm.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  

  double animhight = 120.0 ;
  Color animColor = Colors.white.withOpacity(0.7);
  @override
  void initState() {
    anim();
    super.initState();
  }

  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
     animhight = 0.0; 
     animColor = Colors.white;
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
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
        child: Stack(
          children: <Widget>[
           Container(
             height: 100,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Color(0XFFFF9100),
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(10),
                 bottomRight: Radius.circular(10),
               )
             ),
           ),


            

           //////////// Form Body start ///////////////
           
           SingleChildScrollView(
             physics: BouncingScrollPhysics(),
                        child: Container(
                          margin: EdgeInsets.only(top:10),
               child: Column(
                 children: <Widget>[

                    AnimatedContainer(
                      height:  animhight,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                    ),


                   AnimatedContainer(
                     duration: Duration(milliseconds: 800),
                     curve: Curves.easeInOut,
                     alignment: Alignment.center,
                     //height: 350,
                     margin: EdgeInsets.only(left: 20, right: 20,),
                     decoration: BoxDecoration(
                       color: animColor,
                       boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                       borderRadius: BorderRadius.all(
                          Radius.circular(10),
                       )
                     ),

                 /////////////////////// Changeable widget start/////////////////////////
                     child: SignInForm()

                     /////////////////////// Changeable widget end /////////////////////////
                   ),
                 ],
               ),
             ),
           ),

           //////////// Form Body End ///////////////
          ],
        ),
      )
    );
  }
}