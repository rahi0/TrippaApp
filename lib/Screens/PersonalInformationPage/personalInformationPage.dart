import 'package:flutter/material.dart';

class PersonalInformationPage extends StatefulWidget {
  @override
  _PersonalInformationPageState createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {

bool age = false;
bool gender = false;
bool marital = false;
bool education = false;
bool income = false;
bool employment = false;
bool occupation = false;
bool ethnicity = false;


  ////////////////// Adress Button ///////////////
  Container infoButtonContainer( String title, Icon icons) {
    return Container(
     width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.only(left:20, right: 20, top: 10, bottom: 10),
     color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
      child: Container(
    child: new Text(
      title,
      style: TextStyle(
                                      color: Color(0xFF464646),
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
    ),
      ),
          ),

      icons
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      // leading: Container(
                      //     margin: EdgeInsets.only(left: 18),
                      //     child: BackButton(color: Colors.white)),
                      //expandedHeight: 120.0,
                      floating: true,
                      pinned: true,
                      backgroundColor: Color(0xFFFF9100),
                       title: Text(
                                               "Personal Information",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xFFFFFFFF),
                                                      fontFamily: "Poppins",
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w700),
                                                ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                    ),
                  ];
                },
        
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              children: <Widget>[
                //////////////////////// Address Part Start /////////////////////////
          

          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top:20),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ////////////// Home Adress Button Start ///////////////
                InkWell(
                  onTap: (){
                     setState(() {
                         if(age == false) {
                             age = true;
                         }else{
                           age = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Age", age == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Home Adress Button End ///////////////
                
                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(gender == false) {
                             gender = true;
                         }else{
                           gender = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Gender", gender == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                

                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(marital == false) {
                             marital = true;
                         }else{
                           marital = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Marital Status", marital == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                


                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(education == false) {
                             education = true;
                         }else{
                           education = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Education", education == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                


                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(income == false) {
                             income = true;
                         }else{
                           income = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Household Income", income == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                

                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(employment == false) {
                             employment = true;
                         }else{
                           employment = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Employment", employment == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                

                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(occupation == false) {
                             occupation = true;
                         }else{
                           occupation = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Occupation", occupation == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                
                SizedBox(height:0.5),

                 ////////////// Notifications Button Start ///////////////
               InkWell(
                  onTap: (){
                     setState(() {
                         if(ethnicity == false) {
                             ethnicity = true;
                         }else{
                           ethnicity = false;
                         }
                        
                     });
                  },
                  child: infoButtonContainer("Ethnicity", ethnicity == true? Icon(Icons.check_circle, size: 30,color: Color(0xFFFF9100),): Icon(Icons.radio_button_unchecked, size: 30,color: Color(0xFFC4C4C4),) )
                  ),
                ////////////// Notifications Button End ///////////////
                
              ],
            ),
          ),

          //////////////////////// Address Part End /////////////////////////
          

              ],
            ),
          ),
        ),
        ),
    );
  }
}