
import 'package:flutter/material.dart';
import 'package:paytrippa_app/Widgets/RegistrationFormWidget/regSuccessWidget.dart';

class ProfileInfoForm extends StatefulWidget {
  @override
  _ProfileInfoFormState createState() => _ProfileInfoFormState();
}

class _ProfileInfoFormState extends State<ProfileInfoForm> with SingleTickerProviderStateMixin{
  
  bool _visible = true;

  ///// Age Drop Down////////
  var _age = ['18-24','25-30', '31-40', '41-60'];
  var _currentAgeSelected = '18-24';
  void _ageDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentAgeSelected = newValueSelected;
    });
  }


  ///// Gender Drop Down////////
  var _gender = ['Male','Female', 'Binary', 'Other'];
  var _currentGenderSelected = 'Male';
  void _genderDropDownSelected(String newValueSelected) {
    setState(() {
      this._currentGenderSelected = newValueSelected;
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
        child: Container(
                        // color: Colors.redAccent,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 30),
                         alignment: Alignment.center,
                         
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
 
                             Container(
                               child: Column(
                                 children: <Widget>[


///////////////////////////////////// Changeable Part start//////////////////////////////
                   Container(
                                    // color: Colors.red,
                                    margin: EdgeInsets.only(top: 15, bottom: 20),
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: <Widget>[
                    

                    /////////////////  Age dropdown start ///////////////////

                        Container(
                      //margin: EdgeInsets.only(top: 15),
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
                     



                     /////////////////  Gender dropdown start ///////////////////

                        Container(
                      margin: EdgeInsets.only(top: 15),
                            //color: Colors.red,
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                                      "Gender",
                                      style: TextStyle(
                                          color: Color(0xFF949494),
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                          ),
                                    
                                    ////////  Gender dropdown /////////

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
                                    items: _gender.map((String dropDownStringItem) {
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
                                      _genderDropDownSelected(
                                          newValueSelected);
                                    },
                                    value: _currentGenderSelected,
                            ),
                          ),
                        ),

                                            ],
                                          ),
                          ),

                     ///////////////// Gender dropdown End///////////////
                  

                     /////////////////  Marital Status dropdown start ///////////////////

                        Container(
                      margin: EdgeInsets.only(top: 15),
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
                                   )

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
                                   ),
                                    //////////////// Registartion Button Start ////////////
                           ],
                         ),
                       ),
    ////////////////////////////////// Step 1 end //////////////////////////////
      ),
    );
  }





_continueButton(){

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


      var data = { 
       // 'age' : _currentAgeSelected,
       // 'gender' : selectedGender,
        'marital' : _currentMaritalSelected,
        'education' : _currentEducationSelected,
        'employment' : _currentEmploymentSelected,
        'occupation' : _currentOccupationSelected,
        'income' : _currentIncomeSelected,
        'ethnicity' : _currentEthnicitySelected,
    }; 
    print(data);

    //Navigator.push( context, SlideLeftRoute(page: EditProfileStepTwo()));
  setState(() {
      
      _visible = false;
      Future.delayed(const Duration(milliseconds: 400), (){
        setState(() {
          _visible = true;
        });
      });
    });

    Navigator.pop(context);
}


}