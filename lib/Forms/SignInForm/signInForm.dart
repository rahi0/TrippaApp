import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:paytrippa_app/Widgets/SignInFormWidget/successWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with SingleTickerProviderStateMixin{

  bool isOpen = false;
  bool signInClicked = false;
  bool continueClicked = false;
  bool hasError = false;
  String errorMessage;
  bool _visible = true;

  String countryName = "US";
  String countryPhoneCode = "+1";
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByIsoCode('US');

  
  TextEditingController phoneController = TextEditingController();
  TextEditingController pinController = TextEditingController();



  _showMsg(msg) { //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
   }
  
 ///////////////////// Country picker start///////////////////
   Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
         // SizedBox(width: 8.0),
          //Text("+${country.phoneCode}"),
          SizedBox(width: 8.0),
          isOpen == true ? Flexible(child: Text(country.name)) : Container()
        ],
      );

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Color(0XFFFF9101)),
            child: CountryPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.grey,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your Country'),
                onValuePicked: (Country country) {
                  setState(() {
                    _selectedDialogCountry = country;
                    countryName = "${country.iso3Code}";
                    countryPhoneCode = "+${country.phoneCode}";
                    isOpen = false;
                  });
                },
                    //setState(() => _selectedDialogCountry = country),
                itemBuilder: _buildDialogItem)),
      );
 ///////////////////// Country picker end///////////////////




                  
  @override
  Widget build(BuildContext context) {
    return continueClicked == true ? SuccessWidget() : AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 400),
      child: AnimatedSize(
           vsync: this,
           duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
        child: Container(
                        // color: Colors.redAccent,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 25),
                         alignment: Alignment.center,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[

                             Container(
                               width: MediaQuery.of(context).size.width,
                               child: Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.center,
                                     margin: EdgeInsets.only(bottom: 5),
                                     child: Text(
                                       signInClicked == false ? "Welcome Back" : "OTP Verification",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF464646),
                                            fontFamily: "Poppins",
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700),
                                      ),
                                   ),
                                   Container(
                                     alignment: Alignment.center,
                                     child: Text(
                                       signInClicked == false ? "Sign in to continue" : "Enter the OTP you received to",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF8F8F8F),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                   ),

                                   signInClicked == false ? Container(): Container(
                                     alignment: Alignment.center,
                                     child: Text(
                                       "${countryPhoneCode + phoneController.text}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF5C5C5C),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                   )
                                 ],
                               ),
                             ),




/////////////////////////////////////////Number And Pin start //////////////////////////////////


                             //////////////// Number Section Start ////////////
                           signInClicked == false ?  Container(
                               //color: Colors.yellow,
                               margin: EdgeInsets.only(bottom:25, top: 25),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[

                                   Container(
                                    // alignment: Alignment.center,
                                    margin: EdgeInsets.only(bottom:10),
                                     child: Text(
                                        "Phone Number",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF949494),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                   ),

                                   //////////////// Number Texfield Start ////////////
                                   Container(
                                     decoration: BoxDecoration(
                                          color: Color(0xFFF7F7F7),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                          )
                                        ),
                                     child: Row(
                                       children: <Widget>[

                                         //////////////////// Button Start //////////
                                         

                               GestureDetector(
                                      onTap: (){
                                        _openCountryPickerDialog();
                                        setState(() {
                                          isOpen = true;
                                        });
                                      },
                                      child: Container(
                                        //width: 80,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        child: Container(
                                          child: _buildDialogItem(_selectedDialogCountry),
                                        ),
                                      ),
                                    ),
                                         //////////////////// Button End //////////
                                         Expanded(
                             child: Container(
                        child: TextField(
                          style: TextStyle(
                                                      color: Color(0XFF656565),
                                                      fontSize: 16.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                          cursorColor: Color(0xFF9b9b9b),
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Container(
                                margin: EdgeInsets.only(right: 1.5, left: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                            Text(
                                                  // "+1",
                                                   countryPhoneCode,
                                                  textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                      color: Color(0XFF656565),
                                                      fontSize: 16.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                  ],
                                ),),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent, width: 0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent, width: 0)
                                ),
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(
                                                      color: Color(0XFF656565),
                                                      fontSize: 16.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                            contentPadding: EdgeInsets.only(left: 15, bottom: 15, top: 15),
                           // fillColor: Color(0xFFFFFFFF),
                           // filled: true,
                            
                          ),
                        ),
                      ),
                                         ),
                                       ],
                                     ),
                                   ),

                      //////////////// Number Texfield End ////////////
                                 ],
                               ),
                             ) :
                              //////////////// Number Section End ////////////
                              
                              ///////////////// Pin Textfield  Start///////////////
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 25, bottom: 5),
                              //color: Colors.red,
                              child: Column(
                                children: <Widget>[
                                  PinCodeTextField(
                                      autofocus: false,
                                      controller: pinController,
                                      hideCharacter: false,
                                      highlight: true,
                                      highlightColor: Color(0XFFFF9101),
                                      defaultBorderColor: Colors.transparent,
                                      hasTextBorderColor: Colors.transparent,
                                      maxLength: 4,
                                      hasError: hasError,
                                      keyboardType: TextInputType.number,
                                      pinBoxColor : Color(0XFFF7F7F7),
                                      pinBoxRadius: 10.0,
                                      //maskCharacter: "*",
                                      pinBoxHeight: 60,// MediaQuery.of(context).size.width/7,
                                      pinBoxWidth: 60,//MediaQuery.of(context).size.width/6,


                                      onTextChanged: (text) {
                                        setState(() {
                                          hasError = false;
                                        });
                                      },
                                      onDone: (text){
                                        print("DONE $text");
                                      },
                                     // pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,

                                      wrapAlignment: WrapAlignment.center,
                                      pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                                      pinTextStyle: TextStyle(
                                        color: Color(0xFF656565),
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                      pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                                      pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                                    ),
                                    Visibility(
                                      child: Text(
                                        "Wrong PIN!",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      visible: hasError,
                                    ),
                                ],
                              )
                            ),
                            ///////////////// Pin Textfield  End///////////////
                            

////////////////////////////////////////Number And Pin end///////////////////////////////////





                            signInClicked == false ? Container(
                                     alignment: Alignment.center,
                                     margin: EdgeInsets.only(bottom: 20),
                                     child: Text(
                                        "A 4 digit OTP will be sent via SMS to verify your mobile number!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF949494),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                   ):

                                   Container(
                                     alignment: Alignment.center,
                                     margin: EdgeInsets.only(bottom: 27, top: 25),
                                     child: Text(
                                        "Resend OTP",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFFF9100),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                   ),


                             //////////////// Sign In Button Start ////////////
                             Hero(
                               tag: 'lala',
                                                        child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  color: Color(0xFFFF9100),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: FlatButton(
                                  onPressed:  signInClicked == false ?_signInButton : _continueButton,

                                  child: Container(
                                    child: Text(
                                          signInClicked == false ? "Sign in" : "Continue",
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
                              //////////////// Sign In Button Start ////////////
                           ],
                         ),
                       ),
      ),
    );
  }


  void _signInButton() async{

    if(phoneController.text.isEmpty){
        return _showMsg("Phone Number is empty");
      }
    var data = { 
        'phone' : countryPhoneCode + phoneController.text,
    }; 
    print(data);
    setState(() {
       _visible = false;
      Future.delayed(const Duration(milliseconds: 400), (){
        setState(() {
          _visible = true;
          signInClicked = true;
        });
      });
    //  phoneController.text = "";
    });
   // Navigator.push( context, SlideLeftRoute(page: VerificationPage()));
  }



  void _continueButton() async{

    if(pinController.text.isEmpty){
        return _showMsg("Pin Number is empty");
      }
    var data = { 
        'pin' : pinController.text,
    }; 
    print(data);
    setState(() {
      _visible = false;
      Future.delayed(const Duration(milliseconds: 400), (){
        setState(() {
          _visible = true;
          continueClicked = true;
        });
      });
    //  pinController.text = "";
    });
   // Navigator.push( context, SlideLeftRoute(page: VerificationPage()));
  }
 
}
