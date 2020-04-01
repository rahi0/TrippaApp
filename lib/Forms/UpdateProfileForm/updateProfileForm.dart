import 'package:flutter/material.dart';

class UpdateProfileForm extends StatefulWidget {
  @override
  _UpdateProfileFormState createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {

  
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();


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
                  padding: EdgeInsets.only(bottom: 40),
                  margin: EdgeInsets.only(top:20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
                  ),
                  child: Column(
                    children: <Widget>[

                      //////////////////////// TextField Part Start////////////////////
                      
                      Container(
                        padding: EdgeInsets.only(right:20, left: 20, top: 20),
                        child: Column(
                          children: <Widget>[
                            
                    //////////////// Picture Button Start/////////////////
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                 ////////////// Picture Start ///////////////
                                 Container(
                                    margin: EdgeInsets.only(bottom: 15, right: 10),
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/img/CR7.jpg',
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                 ////////////// Picture Start ///////////////
                                 

                                 ////////////// Button Start ///////////////
                                 Expanded(
                                   child: Container(
                                     alignment: Alignment.center,
                              child: InkWell(
                                onTap: (){

                                },
                                child: Text(
                                      'Update your profile picture',
                                      style: TextStyle(
                                        color: Color(0xFFFF9100),
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                              ),
                            ),
                                 ),
                                 ////////////// Picture Start ///////////////
                              ],
                            )
                          ),
                    //////////////// Picture Button End/////////////////
                    

                    //////////////// Name TextField Start/////////////////
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          //////////////// Firstname TextField Start/////////////////
                          
                          Expanded(
                        child: textFieldContainer("First Name", firstNameController, TextInputType.text, "William"),
                          ),

                          //////////////// Firstname TextField End/////////////////
                          
                          SizedBox(width: 20,),

                          //////////////// Lastname TextField Start/////////////////
                          
                          Expanded(
                        child: textFieldContainer("Last Name", lastNameController, TextInputType.text, "Johnson"),
                          ),
                          
                          //////////////// Lastname TextField End/////////////////
                        ],
                      ),
                    ),

                    //////////////// Name TextField End/////////////////
                    


                    ///////////////// Phone Number Textfield  Start///////////////
                    
                   textFieldContainer("Phone Number", phoneController, TextInputType.number, "017664564454y"),

                     ///////////////// Phone Number Textfield  End///////////////
                     


                     ///////////////// Email Textfield  Start///////////////
                    
                   textFieldContainer("Email", emailController, TextInputType.emailAddress, "williamjohn@gmail.com"),

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
        // 'address' : addressController.text,
        // 'city' : cityController.text,
        // 'state' : stateController.text,
        // 'zip' : zipController.text,
    }; 
    print(data);

    setState(() {
    });
    //Navigator.push( context, SlideLeftRoute(page: EditProfileStepTwo()));
    Navigator.pop(context);
  }
}