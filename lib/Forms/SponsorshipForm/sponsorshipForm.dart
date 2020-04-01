import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/SponsorPreviewPage/sponsorPreviewPage.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class SponsorshipForm extends StatefulWidget {
  @override
  _SponsorshipFormState createState() => _SponsorshipFormState();
}

class _SponsorshipFormState extends State<SponsorshipForm> {

  TextEditingController subController = TextEditingController();
  TextEditingController msgController = TextEditingController();


  /////////////////// textField Container/////////////

   Container textFieldContainer( num i, String title ,TextEditingController textcontroller, TextInputType keytype, String hintTxt) {
    return Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                              child: Text(
                                  title,
                                  style: TextStyle(
                                    color: Color(0xFF949494),
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                ),
                            ),

                 
                Container(
              margin: EdgeInsets.only(top: 6,),
              child: TextField(
                maxLines: i,
                style: TextStyle(
                      color: Color(0xFF656565),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                cursorColor: Color(0xFF9b9b9b),
                controller: textcontroller,
                keyboardType: keytype,
                
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Color(0xFFE4E4E4), width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Color(0xFFE4E4E4), width: 1.5)),
                  hintText: hintTxt,
                  hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 15, top: 5, right: 10),
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  
                ),
              ),
                ),

                        ],
                      ),
                    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFFBFBFB),
          child: SingleChildScrollView(
           physics:  BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 40),
                  margin: EdgeInsets.only(top:25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
                  ),
                  child: Column(
                    children: <Widget>[

                     
                      
                      Container(
                        padding: EdgeInsets.only(right:20, left: 20, top: 30),
                        child: Column(
                          children: <Widget>[
                            
                    ////////////////  Start/////////////////
                    
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                                                   "We are waiting to help you",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF565656),
                                                          fontFamily: "Poppins",
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.w700),
                                                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 30),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                                                   "type message ask to our Customer Support, you will soon hear from us!",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8B8B8B),
                                                          fontFamily: "Poppins",
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),
                    ////////////////  End/////////////////
                    
                //////////////////////// TextField Part Start////////////////////

                    ///////////////// Subject Textfield  Start///////////////
                    
                   textFieldContainer(1, "Subject", subController, TextInputType.number, "Type Subject"),

                     ///////////////// Phone Number Textfield  End///////////////
                     


                     ///////////////// Email Textfield  Start///////////////
                    
                   textFieldContainer(7, "Messages", msgController, TextInputType.emailAddress, "Enter your comment here"),

                     ///////////////// Email Textfield  End///////////////
                          ],
                        ),
                      ),
                      

                    ],
                  ),
                ),
                //////////////////////// TextField Part End////////////////////


                //////////////// Continue Button Start ////////////
                                   Container(
                                     margin: EdgeInsets.only(top:50, left: 20, right: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                      color: Color(0xFFFF9100),
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    child: FlatButton(
                                      onPressed: _sendButton,
                                      child: Container(
                                        child: Text(
                                           "Send",
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
                                    //////////////// Continue Button Start ////////////
              ],
            ),
          ),
          ),
        );
  }


  void _sendButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
     
    var data = { 
        // 'address' : addressController.text,
        // 'city' : cityController.text,
        // 'state' : stateController.text,
        // 'zip' : zipController.text,
    }; 
    print(data);

    setState(() {
    });
    Navigator.push( context, FadeRoute(page: SponsorPreviewPage()));
  }
}