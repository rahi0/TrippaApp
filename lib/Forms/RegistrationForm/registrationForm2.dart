
import 'package:flutter/material.dart';
import 'package:paytrippa_app/Widgets/RegistrationFormWidget/regSuccessWidget.dart';

class RegistrationForm2 extends StatefulWidget {
  @override
  _RegistrationForm2State createState() => _RegistrationForm2State();
}

class _RegistrationForm2State extends State<RegistrationForm2> with SingleTickerProviderStateMixin{
  String selectedGender = "";

  bool _visible = true;
  bool stepOneClicked = false;
  bool stepTwoClicked = false;
  bool agreeClicked = false;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  ///// Age Drop Down////////
  var _age = ['18-24','25-30', '31-40', '41-60'];
  var _currentAgeSelected = '18-24';
  void _ageDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentAgeSelected = newValueSelected;
    });
  }

  ///// Marital Status Drop Down////////
  var _marital = ['Maried','Single', 'Divorce'];
  var _currentMaritalSelected = 'Single';
  void _maritalSelected(String newValueSelected) {
    setState(() {
      this._currentMaritalSelected = newValueSelected;
    });
  }

  ///// Education Drop Down////////
  var _education = ['Bachelor of Engineer','O Level', 'SSC', 'HSC'];
  var _currentEducationSelected = 'Bachelor of Engineer';
  void _educationDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentEducationSelected = newValueSelected;
    });
  }

  ///// Employment Drop Down////////
  var _employment = ['Digital Agency','IT Sector'];
  var _currentEmploymentSelected = 'Digital Agency';
  void _employmentDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentEmploymentSelected = newValueSelected;
    });
  }

   ///// Occupation Drop Down////////
  var _occupation = ['Project Manager','Engineer','Doctor', 'Designer'];
  var _currentOccupationSelected = 'Project Manager';
  void _occupationDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentOccupationSelected = newValueSelected;
    });
  }


  ///// Income Drop Down////////
  var _income = ['\$10.000 - \$50.000','\$51.000 - \$100.000'];
  var _currentIncomeSelected = '\$10.000 - \$50.000';
  void _incomeDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentIncomeSelected = newValueSelected;
    });
  }


  ///// Ethnicity Drop Down////////
  var _ethnicity = ['Chinese','Bangladeshi', 'British', 'American'];
  var _currentEthnicitySelected = 'Chinese';
  void _ethnicityDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentEthnicitySelected = newValueSelected;
    });
  }

  

  ////////// Image Picker//////
  // PhotoCrop state;
  // File imageFile;
  //  String image;
  // var imagePath;
  //  bool _isImage= false;


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


   /////////////////// Gender Container/////////////

   Container genderContainer( Color selectColor, Icon iCon, String title) {
    return Container(
                                  // width: MediaQuery.of(context).size.width/3 - 25,
                                   padding: EdgeInsets.only(top: 10, bottom: 10),
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(
                                        color: selectColor, //Color(0xFFC5C2C7), 
                                        width: 1.0
                                      )
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[

                                        Container(
                                          child: iCon
                                          ),

                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                           title,
                                            style: TextStyle(
                                            color: selectColor, //Color(0xFFDEDDDF),
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                 );
  }


  /////////////////// textField Container/////////////

   Container textFieldContainer(String title ,TextEditingController textcontroller, TextInputType keytype, String hintTxt) {
    return Container(
                      margin: EdgeInsets.only(right: 8),
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



/////////////////// Step 2 Container/////////////

   Container step2Container() {
    return Container(
                                    // color: Colors.red,
                                    margin: EdgeInsets.only(top: 15, bottom: 20),
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: <Widget>[
                  

                     /////////////////  Marital Status dropdown start ///////////////////

                        Container(
                      
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Marital Status",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Marital Status dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _marital.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _maritalSelected(
                                          newValueSelected);
                                    },
                                    value: _currentMaritalSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),

                     ///////////////// Marital Status dropdown End///////////////
                     



                     ///////////////// Education Dropdown Start ///////////////
                     
                     Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Education",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Education Status dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _education.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _educationDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentEducationSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),
                     
                     ///////////////// Education Dropdown End ///////////////
                     

                     ///////////////// Employment Dropdown Start ///////////////
                     
                     Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Employment",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Employment dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _employment.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _employmentDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentEmploymentSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),
                     
                     ///////////////// Employment Dropdown End ///////////////
                     

                     ///////////////// Occupation Dropdown Start ///////////////
                     
                      Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Occupation",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Occupation dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _occupation.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _occupationDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentOccupationSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),
                     
                     ///////////////// Occupation Dropdown End ///////////////
                     

                     ///////////////// Household Income Dropdown Start ///////////////
                     
                      Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Household Income",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Income dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _income.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _incomeDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentIncomeSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),
                     
                     ///////////////// Household Income Dropdown End ///////////////
                     

                     ///////////////// Ethnicity Dropdown Start ///////////////
                     
                     Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Ethnicity",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Income dropdown /////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _ethnicity.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _ethnicityDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentEthnicitySelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),
                     
                     ///////////////// Ethnicity Dropdown End ///////////////
                     
                                         
                                       ],
                                     ),
                                   );
  }


/////////////////// textField Container/////////////

   Container termsConditionContainer() {
    return Container(
                      margin: EdgeInsets.only(bottom: 15, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                                "Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis nibh lacinia at. Vestibulum nec erat ut mi sollicitudin porttitor id sit amet risus. Nam tempus vel odio vitae aliquam. In imperdiet eros id lacus vestibulum vestibulum.",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),

                          Container( 
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                                "Suspendisse fermentum sem sagittis ante venenatis egestas quis vel justo. Maecenas semper suscipit nunc, sed aliquam sapien convallis eu. Nulla ut turpis in diam dapibus consequat. Suse fermentum sem sagittis ante venenatis egestas quis vel justo. Maecenas semper suscipit nunc, sed aliquam sapien convallis eu. Nulla ut turpis in diam dapibus consequat.",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),

                          Container(
                            child: Text(
                                "dapibus consequat. Suse fermentum sem sagittis ante venenatis",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              ),
                          ),
                        ],
                      ),
                    );
  }






// @override
//   void initState() {
//      state = PhotoCrop.free;
//     super.initState();
//   }
   
  


                  
  @override
  Widget build(BuildContext context) {
    return  AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 400),
      child: AnimatedSize(
           vsync: this,
           duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
    ////////////////////////////////// Step 1 start //////////////////////////////
        child: agreeClicked ? RegSuccessWidget() : Container(
                        // color: Colors.redAccent,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 30),
                         alignment: Alignment.center,
                         
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
 
                             Container(
                               child: Column(
                                 children: <Widget>[
                                   //////////uPPER pART start////////
                                   Container(
                                     child: Column(
                                       children: <Widget>[
                                         Container(
                                           alignment: Alignment.center,
                                           margin: EdgeInsets.only(bottom: 10),
                                           child: Text(
                                             stepTwoClicked == false ? "Complete Profile" : "Terms & Conditions",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xFF464646),
                                                  fontFamily: "Poppins",
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                         ),
                                         

                                         //////////////// Indicator Start///////////////
                    
                 stepTwoClicked ? Container() : Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            height: 33,
                            width: 33,
                            decoration: BoxDecoration(
                                    color: Color(0XFFFF9100),
                                    borderRadius: BorderRadius.circular(25)
                            ),
                            child: stepOneClicked == true? Icon(Icons.done, color: Colors.white, size: 20,) : Text(
                                        "1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),//Icon(Icons.done, color: Colors.white,),
                          ),
                          
                          Container(
                            height: 3,
                            width: 60,
                            decoration: BoxDecoration(
                                    color: stepOneClicked == true? Color(0XFFFF9100) : Color(0XFFE9E9E9),
                            ),
                          ),

                          Container(
                            height: 33,
                            width: 33,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                    color: stepOneClicked == true? Color(0XFFFF9100) :Color(0XFFE9E9E9),
                                    borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text(
                                        "2",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: stepOneClicked == true? Color(0XFFFFFFFF) : Color(0xFF7C7C7C),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                          ),
                        ],
                      ),
                    ),
                    //////////////// Indicator End/////////////////
                                       ],
                                     ),
                                   ),
                                   //////////uPPER pART end////////


///////////////////////////////////// Changeable Part start//////////////////////////////
                   stepTwoClicked ? termsConditionContainer()  :    stepOneClicked == true ? step2Container()   : Container(
                                    // color: Colors.red,
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: <Widget>[
                           
                    //////////////// Picture Button Start/////////////////
                    
                    // Container(
                    //   margin: EdgeInsets.only(top: 25),
                    //         //color: Colors.red,
                    //         child: _profilePictureButton()
                    //       ),
                    //////////////// Picture Button End/////////////////
                    

                    //////////////// Name TextField Start/////////////////
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 25),
                     // color: Colors.red,
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
                    


                    ///////////////// Email Textfield  Start///////////////
                    
                   Container(
                            margin: EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                        child: textFieldContainer("Email", emailController, TextInputType.emailAddress, "williamjohn@gmail.com"),
                          ),
                        ],
                      ),
                    ),

                     ///////////////// Email Textfield  End///////////////
                     



                     /////////////////  Age dropdown start ///////////////////

                        Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Age",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Age dropdown start/////////

                        Container(
                          margin: EdgeInsets.only(top: 6),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 1, top: 1, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(
                                        color: Color(0xFFE4E4E4), width: 1.5
                                      )
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down, size: 25, color: Color(0xFFC0C0C0)),
                                    items: _age.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF656565),
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500),
                                          ));
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      _ageDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentAgeSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),

                     ///////////////// Age dropdown End///////////////
                     



                     ///////////////// Gender Selector  Start///////////////
                     
                     Container(
                       margin: EdgeInsets.only(top: 15, bottom: 30),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                            Container(
                            margin: EdgeInsets.only(bottom: 8),
                            child: Text(
                                      "Gender",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),

                           Container(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: <Widget>[

                                       Expanded(
                                           child: GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               selectedGender = "Male";
                                             });
                                           },
                                           child: genderContainer(
                                             selectedGender == "Male" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             Icon(Icons.person, size: 28, color: selectedGender == "Male" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             ), "Male")
                                           ),
                                       ),


                                       SizedBox(width:20),

                                        Expanded(
                                         child: GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               selectedGender = "Female";
                                             });
                                           },
                                           child: genderContainer(
                                             selectedGender == "Female" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             Icon(Icons.android, size: 28, color: selectedGender == "Female" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             ), "Female")
                                           ),
                                        ),


                                        SizedBox(width:20),


                                       Expanded(
                                           child: GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               selectedGender = "Binary";
                                             });
                                           },
                                           child: genderContainer(
                                             selectedGender == "Binary" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             Icon(Icons.person_outline, size: 28, color: selectedGender == "Binary" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             ), "Binary")
                                           ),
                                       ),


                                       SizedBox(width:20),


                                       Expanded(
                                           child: GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               selectedGender = "Other";
                                             });
                                           },
                                           child: genderContainer(
                                             selectedGender == "Other" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             Icon(Icons.account_circle, size: 28, color: selectedGender == "Other" ? Color(0XFFFF9100): Color(0xFFC2C2C2),
                                             ), "Other")
                                           ),
                                       ),
                                       
                                     ],
                                   ),
                           ),
                         ],
                       ),
                     ),
                     ///////////////// Gender Selector  End///////////////
                     
                                         
                                       ],
                                     ),
                                   ),

 /////////////////////////////////// Changeable Part end/////////////////////////////////
                                 ],
                               ),
                             ),




                              //////////////// Registration Button Start ////////////
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
                                        onPressed: stepTwoClicked ? _agreeButton : stepOneClicked == false ? _stepOneButton : _stepTwoButton,
                                        child: Container(
                                          child: Text(
                                             stepTwoClicked ? " I Agree" : "Continue",
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
                                    //////////////// Registartion Button Start ////////////
                           ],
                         ),
                       ),
    ////////////////////////////////// Step 1 end //////////////////////////////
      ),
    );
  }



_stepOneButton(){

  // if(firstNameController.text.isEmpty){
  //       return _showMsg("First Name is empty");
  //     }
  //   else if(lastNameController.text.isEmpty){
  //       return _showMsg("Lirst Name is empty");
  //     }
  //     else if(emailController.text.isEmpty){
  //       return _showMsg("Email is empty");
  //     }
  //     else if(_currentAgeSelected == ""){
  //       return _showMsg("Age is not selected");
  //     }
  //     else if(selectedGender == ""){
  //       return _showMsg("Gender is not selected");
  //     }

  setState(() {
      
      _visible = false;
      Future.delayed(const Duration(milliseconds: 400), (){
        setState(() {
          stepOneClicked = true;
          _visible = true;
        });
      });
    });
}



_stepTwoButton(){

   if(_currentMaritalSelected == ""){
        return _showMsg("Marital Status is not selected");
      }
    else if(_currentEducationSelected == ""){
        return _showMsg("Education is not selected");
      }
      else if(_currentEmploymentSelected == ""){
        return _showMsg("Employment is not selected");
      }
      else if(_currentOccupationSelected == ""){
        return _showMsg("Occupation is not selected");
      }
      else if(_currentIncomeSelected == ""){
        return _showMsg("Household Income is not defined");
      }
      else if(_currentEthnicitySelected == ""){
        return _showMsg("Ethnicity is not selected");
      }
  setState(() {
      
      _visible = false;
      Future.delayed(const Duration(milliseconds: 400), (){
        setState(() {
          stepTwoClicked = true;
          _visible = true;
        });
      });
    });
}



  void _agreeButton() async{

    // setState(() {
    //      this.hasError = true;
    //          });
     
    var data = { 
        'firstName' : firstNameController.text,
        'lastname' : lastNameController.text,
        'email' : emailController.text,
        'age' : _currentAgeSelected,
        'gender' : selectedGender,
        'marital' : _currentMaritalSelected,
        'education' : _currentEducationSelected,
        'employment' : _currentEmploymentSelected,
        'occupation' : _currentOccupationSelected,
        'income' : _currentIncomeSelected,
        'ethnicity' : _currentEthnicitySelected,
    }; 
    print(data);

    setState(() {
      agreeClicked = true;
    });
    //Navigator.push( context, SlideLeftRoute(page: EditProfileStepTwo()));
  }
}