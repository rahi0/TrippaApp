import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SponsorVideoAddPage extends StatefulWidget {
  @override
  _SponsorVideoAddPageState createState() => _SponsorVideoAddPageState();
}

class _SponsorVideoAddPageState extends State<SponsorVideoAddPage> {

  bool _videoPaused = false;
  
  double animhight = 0.0 ;
  Color animColor = Colors.white;
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initielize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    anim();
    super.initState();
  }




  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }


  anim() async {
    await Future.delayed(new Duration(milliseconds: 100));
    setState(() {
     animhight = MediaQuery.of(context).size.height; 
     animColor = Color(0XFFFF9100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      
      body: SafeArea(
        child: Column(
          children: <Widget>[


           //////////// Form Body start ///////////////
           
           Expanded(
             child: AnimatedContainer(
               duration: Duration(milliseconds: 300),
               curve: Curves.easeInOut,
              // alignment: Alignment.center,
               width: MediaQuery.of(context).size.width,
               //margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
               decoration: BoxDecoration(
                 color:  Color(0xFFF5F5F5),
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: Container(
                 //color: Colors.red,
                 alignment: Alignment.center,
                 padding: EdgeInsets.fromLTRB(20, 20, 20,10),
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                    Container(
                      child: Text(
                                                     "Sponsored by",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF474747),
                                                            fontFamily: "Poppins",
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),

                    Container(
                      height: 35,
                      width: 145,
                      margin: EdgeInsets.only(bottom: 17, top: 14),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/audi.png'),
                                                  fit: BoxFit.contain,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),

                     //////////////////////////// Video START///////////////////
                    Container(
                      height: MediaQuery.of(context).size.width/2,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                       decoration: BoxDecoration(
                                                  //color: Colors.red,
                                                  borderRadius: BorderRadius.all(Radius.circular(15))
                                                  ),
                      

                      child: Stack(
                            children: <Widget>[
                              Center(
                                child:FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState == ConnectionState.done) {
                                      // If the VideoPlayerController has finished initialization, use
                                      // the data it provides to limit the aspect ratio of the video.
                                      return AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        // Use the VideoPlayer widget to display the video.
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: VideoPlayer(_controller)
                                          ),
                                      );
                                    } else {
                                      // If the VideoPlayerController is still initializing, show a
                                      // loading spinner.
                                      return Center(child: CircularProgressIndicator());
                                    }
                                  },
                                )),


                                GestureDetector(
                                  onTap: () {
                                            // Wrap the play or pause in a call to `setState`. This ensures the
                                            // correct icon is shown.
                                            setState(() {
                                              // If the video is playing, pause it.
                                              if (_controller.value.isPlaying) {
                                                _controller.pause();
                                                _videoPaused = true;
                                              } else {
                                                // If the video is paused, play it.
                                                _controller.play();
                                                _videoPaused = false;
                                              }
                                            });
                                          },
                                  child: Container(
                                    height: MediaQuery.of(context).size.width/2,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 56.0,
                                          width: 56.0,
                                          decoration: BoxDecoration(
                                            color: _controller.value.isPlaying ? Colors.transparent : Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                          ),
                                          child: Icon(
                                              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                              size: 30.0,
                                              color:  _controller.value.isPlaying ? Colors.transparent : Color(0xFFFF9100),
                                            ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),


                              //  Center(
                              //       child:
                              //       ButtonTheme(
                              //           height: 56.0,
                              //           minWidth: 56.0,
                              //           child: FlatButton(
                              //             //padding: EdgeInsets.all(60.0),
                              //             color: _controller.value.isPlaying ? Colors.transparent : Colors.white,
                              //             //textColor: Colors.white,
                              //             shape: CircleBorder(),
                              //             onPressed: () {
                              //               // Wrap the play or pause in a call to `setState`. This ensures the
                              //               // correct icon is shown.
                              //               setState(() {
                              //                 // If the video is playing, pause it.
                              //                 if (_controller.value.isPlaying) {
                              //                   _controller.pause();
                              //                   _videoPaused = true;
                              //                 } else {
                              //                   // If the video is paused, play it.
                              //                   _controller.play();
                              //                   _videoPaused = false;
                              //                 }
                              //               });
                              //             },
                              //             child: Icon(
                              //               _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                              //               size: 30.0,
                              //               color:  _controller.value.isPlaying ? Colors.transparent : Color(0xFFFF9100),
                              //             ),
                              //           ))
                              //   )
                            ],
                          ),
                    ),
                    //////////////////////////// Video eND///////////////////


                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 33, right: 33),
                      child: Text(
                                                     "New Audi RS6 Avant 2019 Introduction Video",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Color(0xFF565656),
                                                            fontFamily: "Poppins",
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w700),
                                                      ),
                    ),


                     ],
                   ),
                 ),
               )

               /////////////////////// Changeable widget end /////////////////////////
             ),
           ),

           //////////// Form Body End ///////////////
           



           //////////////// Bottom Part Start////////////////
            
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                    decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                 )
               ),
                 child: Column(
                children: <Widget>[


                  Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF979797),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:25, bottom: 17),
                    child: Text(
                                                   "Introduction to Marketing - Starbucks public relations Promotional Video",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                  Container(
                    child: Text(
                                                   "Audi of America, Inc",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFF8F8F8F),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(top:3, bottom: 18),
                    child: Text(
                                                   "www.audiusa.com",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xFFFF9100),
                                                          fontFamily: "Poppins",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500),
                                                    ),
                  ),


                  //////////////// Done Start ////////////
                           Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              color: Color(0xFFFF9100),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: FlatButton(
                              onPressed: (){
                               // Navigator.push( context, FadeRoute(page: SponsorPictureAddPage()));
                              },

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
                            //////////////// Done Button Start ////////////


                   ],
                 ),
               )
                ],
              ),
            ),
            //////////////// Bottom Part End////////////////
          ],
        ),
      )
    );
  }
}