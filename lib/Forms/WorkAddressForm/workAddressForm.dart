import 'package:flutter/material.dart';

class WorkAdressForm extends StatefulWidget {
  @override
  _WorkAdressFormState createState() => _WorkAdressFormState();
}

class _WorkAdressFormState extends State<WorkAdressForm> {

  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipController = TextEditingController();


  /////////////////// textField Container/////////////

   Container textFieldContainer(String title ,TextEditingController textcontroller, TextInputType keytype, String hintTxt) {
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
                  contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 5, right: 10),
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
                  padding: EdgeInsets.only(top:10, bottom: 50),
                  margin: EdgeInsets.only(top:20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                  ),
                  child: Column(
                    children: <Widget>[

                      //////////////////////// TextField Part Start////////////////////
                      
                      Container(
                        padding: EdgeInsets.only(right:20, left: 20),
                        child: Column(
                          children: <Widget>[

                            //////////////////// Address Textfield Start ////////////////
                            textFieldContainer("Address", addressController, TextInputType.text, ""),
                            //////////////////// Address Textfield End ////////////////
                            


                            //////////////////// City Textfield Start ////////////////
                            textFieldContainer("City", cityController, TextInputType.text, ""),
                            //////////////////// City Textfield End ////////////////
                            


                            //////////////////// State Textfield Start ////////////////
                            textFieldContainer("State", stateController, TextInputType.text, ""),
                            //////////////////// State Textfield End ////////////////
                            


                            //////////////////// Zip/postal Textfield Start ////////////////
                            textFieldContainer("Zip/Postal", zipController, TextInputType.text, ""),
                            //////////////////// Zip/postal Textfield End ////////////////
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
                                      onPressed: _continueButton,
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
                                    //////////////// Continue Button Start ////////////
              ],
            ),
          ),
          ),
        );
  }


  void _continueButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
     
    var data = { 
        'address' : addressController.text,
        'city' : cityController.text,
        'state' : stateController.text,
        'zip' : zipController.text,
    }; 
    print(data);

    setState(() {
    });
    //Navigator.push( context, SlideLeftRoute(page: EditProfileStepTwo()));
    Navigator.pop(context);
  }
}