import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:paytrippa_app/Screens/SearchPage/searchPage.dart';
import 'package:paytrippa_app/Widgets/HomePageWidget/drawerWidget.dart';
import 'package:paytrippa_app/customPlugin/routeTransition/routeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BitmapDescriptor texiIcon;
  var pickLatitude;
  var pickLongitude;
  

  ///////////// Google Map //////////
  Set<Marker> _markers = Set();
  Set<Polyline> _polylines = Set();
  CameraPosition _initialPosition;
  Completer<GoogleMapController> _controller = Completer();



  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  

  @override
  void initState() {
    // //_showAlertDialog();
    // _initialPosition =
    //     CameraPosition(target: LatLng(24.8319, 92.0825), zoom: 18);
    // //_deviceLocation();

    // BitmapDescriptor.fromAssetImage(
    //         ImageConfiguration(size: Size(80, 80)), 'assets/img/myloc.png')
    //     .then((onValue) { 
    //   texiIcon = onValue;
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0XFFFF9100),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: _showAlertDialog,
          )
        ],
      ),
      drawer: DrawerOnly(),
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
                   child: Text(
                                             "Good Morning, John",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontFamily: "Poppins",
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700),
                                              ),
                 ),

                 //////////////// Map Start /////////////////
                 
                //  Expanded(
                //    child: Container(
                //     color: Colors.red,
                //      child: GoogleMap(
                //       markers: _markers,
                //       polylines: _polylines,
                //       mapType: MapType.normal,
                //       // myLocationEnabled: true,
                //       // myLocationButtonEnabled: true,
                //       onMapCreated: _onMapCreated,
                //       initialCameraPosition: _initialPosition,
                //       onCameraMove: ((_position) => _updatePosition(_position)),
                //     ),
                //    )
                //    )

                 //////////////// Map End /////////////////
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
                     Navigator.push( context, FadeRoute(page: SearchPage()));
                   },
                   child: Container(
                     margin: EdgeInsets.only(top:60),
                       child: Hero(
                         tag: 'ohho',
                         child: Container(
                           alignment: Alignment.center,
                           width: MediaQuery.of(context).size.width,
                           margin: EdgeInsets.only(left: 20, right: 20,),
                           padding: EdgeInsets.only(bottom: 20, left: 23, top: 20),
                           decoration: BoxDecoration(
                             color: Colors.white,
                             boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                             borderRadius: BorderRadius.all(
                   Radius.circular(10),
                             )
                           ),
                           child: Row(
                              children: <Widget>[
                                
                                Icon(Icons.location_on, size: 30, color: Color(0xFF448BFF)),

                                Container(
                                  margin: EdgeInsets.only(left:10),
                                            child: Text(
                                               "Where are you to go ?",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xFF847F7F),
                                                      fontFamily: "Poppins",
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                          ),
                              ],
                           ),
                         ),
                       ),
                     ),
                 ),
                   ///////////////// Location Entry Button End //////////////
                   


                   ///////////////// Saved Places Button Start //////////////
                   
                   Container()

                   ///////////////// Saved Places Button Start End //////////////
               ],
             ),
           ),

           //////////// Form Body End ///////////////
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: null,//_deviceLocation,
        backgroundColor: Color(0xFFFF9100),
        child: Icon(Icons.my_location, size:30),
        ),
    );
  }



  ///////////// Current Location Picker//////////
  void _deviceLocation() async {
    LocationData currentLocation;
    var location = Location();
    try {
      currentLocation = await location.getLocation();
    } on Exception {
      currentLocation = null;
    }

    var currentLatitude = currentLocation.latitude;
    var currentLongitude = currentLocation.longitude;

    GoogleMapController controller = await _controller.future;
      controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(currentLatitude, currentLongitude),
          zoom: 18.0,
        ),
      ) 
     );

    setState(() {
      print(currentLatitude);
      print(currentLongitude);
      _markers.add(
          Marker(
            icon: texiIcon,
            markerId: MarkerId('pickLocationId'),
            position: LatLng(currentLatitude, currentLongitude),
          ),
        );
    });
  }

  void _updatePosition(CameraPosition _position) async {
    Marker marker = _markers.firstWhere(
        (p) => p.markerId == MarkerId('marker_2'),
        orElse: () => null);
    setState(() {
      _markers.remove(marker);
    });

    _markers.add(
      Marker(
        markerId: MarkerId('marker_2'),
        icon: texiIcon,
        position: LatLng(_position.target.latitude, _position.target.longitude),
        // infoWindow: myAddress != ''
        //     ? InfoWindow(title: "$myAddress")
        //     : InfoWindow(
        //         title: '${_position.target.latitude}',
        //         snippet: '${_position.target.longitude}'),
        // infoWindow: InfoWindow(title: '${_position.target.latitude}',
        //         snippet: '${_position.target.longitude}'),
        draggable: true,
        //icon: _searchMarkerIcon,
      ),
    );
    setState(() {
      pickLatitude = _position.target.latitude;
      pickLongitude = _position.target.longitude;
    });
  }



  void _showAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            backgroundColor: Colors.white,
            title: Container(
                                          child: Text(
                                             "Ready to Tripp ?",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xFF2A2A2A),
                                                    fontFamily: "Poppins",
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                        ),
            content: Text(
              "To start earning PayTrippa points, enter your destination address",
              textAlign: TextAlign.center,
              //overflow: TextOverflow.ellipsis,
              //maxLines: 2,
            ),
            contentTextStyle: TextStyle(
                                                    color: Color(0xFF8F8F8F),
                                                    fontFamily: "Poppins",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
            actions: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                              color: Color(0xFFFF9100),
                                            ),
                                            //width: MediaQuery.of(context).size.width,
                                            padding: EdgeInsets.only(left:15, right:15),
                                            margin: EdgeInsets.only(bottom:15),
                                            height: 45,
                                            child: FlatButton(
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                child: Text(
                                                   "Enter Address",
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
                  ],
                ),
              ),
            ],
          );
        });
  }
  
}