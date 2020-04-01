import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

bool _isChanged = false;
   TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
var locationName = List<String>();
 ////// list
List<String> name = [
    "New York",
    "Michigan",
    "Alaska",
    "Texas",
    "LA"
  ];


List<String> button = [
    "Home",
    "Work",
    "Omy Cafe & Restaurant",
    "Rice and Spice",
    "Exit",
  ];


@override
  void initState() {
    locationName.addAll(name);
    super.initState();
  }


  ///////////// Search////
 
////// Blank Array

////// initState

////// Filter method
void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(name);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        locationName.clear();
        locationName.addAll(dummyListData);
        //print(friendname);
      });
      return;
    } else {
      setState(() {
        locationName.clear();
        locationName.addAll(name);
        //print(friendname);
      });
    }
  }
////// Onchanged in textfield

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9100),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
        child: Stack(
          children: <Widget>[

            //////////////////////// Map & Text part start///////////////////
           Container(
             child: Column(
               children: <Widget>[
                 Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width,
                   alignment: Alignment.topLeft,
                   padding: EdgeInsets.only(left: 20, top: 10),
                   decoration: BoxDecoration(
                     color: Color(0XFFFF9100),
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(10),
                       bottomRight: Radius.circular(10),
                     )
                   ),
                 ),

                 
                 
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top:40),
                    child: Column(
                      children: <Widget>[

                    ///////////////// List Button Start //////////////
                   
                  _isChanged ? Container() : Container(
                     width: MediaQuery.of(context).size.width,
                     height: 42,
                     //color: Colors.red,
                     padding: EdgeInsets.only(top: 5, bottom: 5),
                     child: ListView.builder(
                       physics: BouncingScrollPhysics(),
                       scrollDirection: Axis.horizontal,
                          itemCount: button.length,
                          itemBuilder: (BuildContext ctxt, int index){
                            return GestureDetector(
                              onTap: (){
                                
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.home, color: Color(0xFF8E8E8E), size: 20,),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    child: Text(
                                           button[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xFF8E8E8E),
                                              fontFamily: "Poppins",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                  ),
                                ],
                              ),
                              ),
                            );
                          }
                        ),
                   ),

                   ///////////////// List Button Start End //////////////
                   


                    ///////////////// Saved Places Button Start //////////////
                   
                 _isChanged ? Container() :  GestureDetector(
                     onTap: (){

                     },
                     child: Container(
                       margin: EdgeInsets.only(top: 10, bottom: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
               ),
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.only(left:20, right: 10, top: 15, bottom: 15),
                                
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Icon(Icons.bookmark_border, color: Color(0xFF847F7F),)
                                        ),
                                      Expanded(
                                  child: Container(
                                child: new Text(
                                  "Saved Address",
                                  style: TextStyle(
                                                    color: Color(0xFF847F7F),
                                                    fontFamily: "Poppins",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                                ),
                                                    ),

                Icon(Icons.keyboard_arrow_right, size: 30,color: Color(0xFF847F7F),)
        ],
      ),
    ),
                   ),

                   ///////////////// Saved Places Button Start End //////////////
                   

                        //////////////// Cards Start /////////////////
                        Expanded(
                          child: Container(
                           color: Colors.white,
                           child: CustomScrollView(
                             physics: BouncingScrollPhysics(),
                             slivers: <Widget>[
                               SliverPadding(
                                    padding: EdgeInsets.only(bottom: 15, top: 5),
                                    sliver: SliverList(
                                      delegate: SliverChildBuilderDelegate(
                                          (BuildContext context, int index) {
                                            return SearchCard();
                                            },
                                    childCount: locationName.length
                                    ),
                                    ),
                                  ),
                             ],
                           ),
                         )
                         ),

                         //////////////// cards End /////////////////
                      ],
                    ),
                  ),
                )

                 
               ],
             ),
           ),
           //////////////////////// Map & Text part end///////////////////


            

           //////////// Form Body start ///////////////
           
           Container(
             child: Column(
               children: <Widget>[

                 ///////////////// Location Entry Button Start //////////////
                 GestureDetector(
                   onTap: (){

                   },
                   child: Container(
                     //margin: EdgeInsets.only(top:60),
                       child: Container(
                         alignment: Alignment.center,
                         width: MediaQuery.of(context).size.width,
                         margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                         padding: EdgeInsets.only(bottom: 10, left: 20, top: 20),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                           borderRadius: BorderRadius.all(
                   Radius.circular(10),
                           )
                         ),
                         child: Column(
                           children: <Widget>[

                             ///////////////////////   From ////////////////////////
                             Hero(
                               tag: 'ohho',
                               child: Container(
                                 child: Row(
                                    children: <Widget>[
                                      
                                      Icon(Icons.trip_origin, size: 30, color: Color(0xFF448BFF)),

                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left:10),
                                                    child: Text(
                                                       "Rose Avenue ,23 Ring Road",
                                                       overflow: TextOverflow.ellipsis,
                                                          style: TextStyle(
                                                              color: Color(0xFF2A2A2A),
                                                              fontFamily: "Poppins",
                                                              fontSize: 18,
                                                              fontWeight: FontWeight.w500),
                                                        ),
                                                  ),
                                      ),
                                    ],
                                 ),
                               ),
                             ),
                             ////////////////////// From End /////////////////////////////////////
                             

                             Container(
                               margin: EdgeInsets.only(left: 40, right: 20, top: 10),
                               height: 1,
                               width: MediaQuery.of(context).size.width,
                               color: Color(0xFFD8D8D8)
                             ),



                             ////////////////////// To Start /////////////////////////////////////
                             

                             Container(
                             //  color: Colors.blue,
                               child: Row(
                                       children: <Widget>[

                                         //////////////////// Button Start //////////
                                         

                                        Icon(Icons.location_on, size: 30, color: Color(0xFFFB5A5A)),
                                         //////////////////// Button End //////////
                                         Expanded(
                           child: Container(
                        child: TextField(
                        style: TextStyle(
                                                      color: Color(0XFF2A2A2A),
                                                      fontSize: 18.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                        cursorColor: Color(0xFF9b9b9b),
                        controller: toController,
                        keyboardType: TextInputType.text,
                        onChanged: (value){
                                  filterSearchResults(value);
                                  setState(() {
                                    _isChanged = true;
                                  });
                                },
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: (){
                                print("object");
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 15, left: 1.5),
                                  child: Icon(Icons.add_circle_outline, size: 25, color: Color(0xFFD5D5D5)),),
                            ),

                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent, width: 0)),
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.transparent, width: 0)
                                ),
                          hintText: "I will go to ...",
                          hintStyle: TextStyle(
                                                      color: Color(0XFF847F7F),
                                                      fontSize: 18.0,
                                                      decoration: TextDecoration.none,
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                          contentPadding: EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 5),
                         // fillColor: Color(0xFFFFFFFF),
                         // filled: true,
                          
                        ),
                        ),
                      ),
                                         ),
                                       ],
                                     ),
                             ),
                           ],
                         ),
                       ),
                     ),
                 ),
                   ///////////////// Location Entry Button End //////////////
                   
               ],
             ),
           ),

           //////////// Form Body End ///////////////
          ],
        ),
      ),
    );
  }
  
}




//////////////////////// Search Card ////////////////////////////////////////////////////////////

class SearchCard extends StatefulWidget {
  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("kortam nay select...farle kunta korila");
      },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
             decoration: BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color: Color(0xFFD8D8D8),
                                                            width: 1.0
                                                          )
                                                        )
                                                      ),
                                              child: Row(
                                                children: <Widget>[
                                                  

                                                  ///////////// Adress ///////////
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.only(top: 13,  bottom: 13),
                                                     
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          Container(
                                                    margin: EdgeInsets.only(bottom: 2),
                                                      child: Text(
                                                          "Wireless Bus Stop",
                                                          style: TextStyle(
                                                            color: Color(0xFF4B4B4B),
                                                            fontFamily: "Poppins",
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w700),
                                                        ),
                                                    ),


                                                    Container(
                                                      child: Text(
                                                          "St, Lounge Road, California",
                                                          style: TextStyle(
                                                            color: Color(0xFFA3A3A3),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500),
                                                        ),
                                                    ),
                                                        ],
                                                      ),
                                                    )
                                                    ),
                                                  ///////////// Adress ///////////
                                                ],
                                              ),
                                            ),
    );
  }
}