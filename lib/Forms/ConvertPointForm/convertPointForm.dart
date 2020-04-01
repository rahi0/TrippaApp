import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:paytrippa_app/Screens/ConvertSuccessPage/convertSuccessPage.dart';
import 'package:paytrippa_app/Widgets/SignInFormWidget/successWidget.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ConvertPointForm extends StatefulWidget {
  @override
  _ConvertPointFormState createState() => _ConvertPointFormState();
}

class _ConvertPointFormState extends State<ConvertPointForm> with SingleTickerProviderStateMixin{

  bool _visible = true;
  bool isdisable = true;
  
  TextEditingController pointsController = TextEditingController();
  TextEditingController dollerController = TextEditingController();



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
  
 



                  
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
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
                               child: Wrap(
                                 alignment: WrapAlignment.center,
                                 spacing: 5,
                                 children: <Widget>[
                                   Container(
                                     child: Text(
                                       "Your Balance" ,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF949494),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                   ),
                                   Container(
                                     child: Text(
                                       "4,430 Points",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF5D5D5D),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                   ),
                                 ],
                               ),
                             ),




/////////////////////////////////////////Number And Pin start //////////////////////////////////


                             //////////////// Number Section Start ////////////
                            Container(
                               margin: EdgeInsets.only(bottom:25, top: 18),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[

                                   

                                //////////////// Point Texfield Start ////////////
                                   Container(
                                     margin: EdgeInsets.only(bottom: 15),
                                     decoration: BoxDecoration(
                                          color: Color(0xFFF7F7F7),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                          )
                                        ),
                                     child: Row(
                                       children: <Widget>[

                                         //////////////////// Button Start //////////
                                         

                                        Container(
                                            padding: EdgeInsets.only(left: 20, right: 5),
                                            child: ClipOval(
                                              child: Image.asset(
                                                'assets/img/trippa.png',
                                                height: 36,
                                                width: 36,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                         //////////////////// Button End //////////
                                         Expanded(
                             child: Container(
                               padding: EdgeInsets.only(top:5),
                        child: TextField(
                          style: TextStyle(
                                                      color: Color(0XFF464646),
                                                      fontSize: 24.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.normal,
                                                    ),
                          cursorColor: Color(0xFF9b9b9b),
                          controller: pointsController,
                          keyboardType: TextInputType.number,
                          onChanged: _onchanged,
                          decoration: InputDecoration(
                              suffixIcon: Container(
                                margin: EdgeInsets.only(right: 15, left: 1.5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                           "Points",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Color(0XFF949494),
                                              fontSize: 18.0,
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
                            hintText: "Type your Points",
                            hintStyle: TextStyle(
                                                      color: Color(0XFFC6C6C6),
                                                      fontSize: 18.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                            contentPadding: EdgeInsets.only(left: 10, bottom: 15, top: 20, right: 5),
                           // fillColor: Color(0xFFFFFFFF),
                           // filled: true,
                            
                          ),
                        ),
                      ),
                                         ),
                                       ],
                                     ),
                                   ),

                                 //////////////// Point Texfield End ////////////
                                 




                                 //////////////// Doller Texfield Start ////////////
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
                                         

                                        Container(
                                            padding: EdgeInsets.only(left: 20, right: 5),
                                            child: ClipOval(
                                              child: Image.asset(
                                                'assets/img/doller2.png',
                                                height: 36,
                                                width: 36,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                         //////////////////// Button End //////////
                                         Expanded(
                             child: Container(
                               padding: EdgeInsets.only(top:5),
                        child: TextField(
                          style: TextStyle(
                                                      color: Color(0XFF464646),
                                                      fontSize: 24.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.normal,
                                                    ),
                          cursorColor: Color(0xFF9b9b9b),
                          controller: dollerController,
                          readOnly: true,
                          decoration: InputDecoration(
                              suffixIcon: Container(
                                margin: EdgeInsets.only(right: 15, left: 1.5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                           "USD",
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              color: Color(0XFF949494),
                                              fontSize: 18.0,
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
                            hintText: "0",
                            hintStyle: TextStyle(
                                                      color: Color(0XFFC6C6C6),
                                                      fontSize: 24.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                            contentPadding: EdgeInsets.only(left: 10, bottom: 15, top: 20, right: 5),
                           // fillColor: Color(0xFFFFFFFF),
                           // filled: true,
                            
                          ),
                        ),
                      ),
                                         ),
                                       ],
                                     ),
                                   ),

                                 //////////////// Doller Texfield End ////////////
                                 
                                 ],
                               ),
                             ) ,
                         //////////////// Number Section Start ////////////
                            

////////////////////////////////////////Number And Pin end///////////////////////////////////





                            Container(
                                     alignment: Alignment.center,
                                     margin: EdgeInsets.only(bottom: 25),
                                     child: Column(
                                       children: <Widget>[
                                         Container(
                                           margin: EdgeInsets.only(bottom: 5),
                                           child: Text(
                                              "Conversation rate today",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xFF949494),
                                                  fontFamily: "Poppins",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                         ),
                                         Container(
                                           child: Text(
                                              "1 Point = \$0.25",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xFFFF9100),
                                                  fontFamily: "Poppins",
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                         ),
                                       ],
                                     ),
                                   ),


                             //////////////// Convert Button Start ////////////
                             Hero(
                               tag: 'dishkiao',
                                                        child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  color: isdisable == false ? Color(0xFFFF9100) : Color(0xFFB1B1B1),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: FlatButton(
                                  onPressed:  isdisable == false ? _convertButton : null,

                                  child: Container(
                                    child: Text(
                                           "Convert Now",
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
                              //////////////// Convert Button Start ////////////
                           ],
                         ),
                       ),
      ),
    );
  }




   _onchanged(value) async{
        if(value == ""){
          setState(() {
            isdisable = true;
            dollerController.text = "";
          });
        }
        else{
          setState(() {
            isdisable = false;
            var points = double.parse(pointsController.text);
            var doller = points * 0.25;
            String dollerConverted = doller.toString();
            dollerController.text = dollerConverted;
          });
        }
      }

  void _convertButton() async{

    // if(phoneController.text.isEmpty){
    //     return _showMsg("Phone Number is empty");
    //   }
    // var data = { 
    //     'phone' : countryPhoneCode + phoneController.text,
    // }; 
    // print(data);
    // setState(() {
    //    _visible = false;
    //   Future.delayed(const Duration(milliseconds: 400), (){
    //     setState(() {
    //       _visible = true;
    //       signInClicked = true;
    //     });
    //   });
    // //  phoneController.text = "";
    // });
    Navigator.push( context, FadeRoute(page: ConvertSuccessPage()));
  }

 
}
