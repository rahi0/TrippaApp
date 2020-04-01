import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SponsorPictureAddPage extends StatefulWidget {
  @override
  _SponsorPictureAddPageState createState() => _SponsorPictureAddPageState();
}

class _SponsorPictureAddPageState extends State<SponsorPictureAddPage> {
  PageController _controller = PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  


  /////////////////// textField Container/////////////

   Container pageContainer() {
    return Container(
                          color: Colors.white,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              children: <Widget>[

                                ///////////////// Image Start ////////////////////
                                Container(
                                    height: MediaQuery.of(context).size.width/2.4,
                                    width: MediaQuery.of(context).size.width/1.3,
                                    margin: EdgeInsets.only(bottom: 20, top: 20),
                                    decoration: BoxDecoration(
                                                                //color: Colors.red,
                                                                image: DecorationImage(image: AssetImage('assets/img/intropic.png'),
                                                                fit: BoxFit.contain,
                                                              // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                                )),
                                  ),
                                ///////////////// Image Start ////////////////////
                                

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ///////////////// Title Start ////////////////////
                                Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    
                                    child: Text(
                                                                  "Slim and Seamless",
                                                                      textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          color: Color(0xFF565656),
                                                                          fontFamily: "Poppins",
                                                                          fontSize: 20,
                                                                          fontWeight: FontWeight.w700),
                                                                    ),
                                  ),
                                ///////////////// Title Start ////////////////////
                                


                                ///////////////// Contant Start ////////////////////
                                Container(
                                    child: Text(
                                                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Sed sit amet arcu aliquet, molestie justo at, auctor nunc. Phasellus ligula ipsum, volutpat eget semper id.
viverra eget nibh. Suspendisse luctus mattis cursus. Nam consectetur ante at nisl hendrerit gravida. Donec vehicula rhoncus mattis. Mauris dignissim semper mattis. Fusce porttitor a mi at suscipit. Praesent facilisis dolor sapien, vel sodales augue mollis ut. Mauris venenatis magna eu tortor posuere luctus. Aenean tincidunt turpis sed dui aliquam vehicula. Praesent nec elit non dolor consectetur tincidunt sed in felis. Donec elementum, lacus at mattis tincidunt, eros magna faucibus sem, in condimentum est augue tristique risus.''',
                                                                      //textAlign: TextAlign.center,
                                                                      style: TextStyle(
                                                                          color: Color(0xFF8A8A8A),
                                                                          fontFamily: "Poppins",
                                                                          fontSize: 13,
                                                                          fontWeight: FontWeight.normal),
                                                                    ),
                                  ),
                                ///////////////// Contant Start ////////////////////
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Column(
          children: <Widget>[

            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                          onTap: (){
                             _controller.previousPage(duration: _kDuration, curve: _kCurve);
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [BoxShadow(color: Colors.grey[500], blurRadius: 5)],
                            ),
                            child: Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 30,),
                          ),
                        ),
                ],
              ),
            ),



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
                      margin: EdgeInsets.only(bottom: 10, top: 14),
                       decoration: BoxDecoration(
                                                 // color: Colors.red,
                                                  image: DecorationImage(image: AssetImage('assets/img/samsung.png'),
                                                  fit: BoxFit.fill,
                                                 // colorFilter: new ColorFilter.mode(colorss, BlendMode.dstATop)
                                                  )),
                    ),


           //////////// Form Body start ///////////////
           
           Expanded(
             child: Container(
              // alignment: Alignment.center,
               width: MediaQuery.of(context).size.width,
               //margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
               decoration: BoxDecoration(
                 color:  Color(0xFFF5F5F5),
               ),
               


               /////////////////////// Changeable widget start/////////////////////////
               child: PageView.builder(
                      itemBuilder: (context, position) {
                        return pageContainer();
                      },
                      controller: _controller,
                      itemCount: 5,
                      physics: NeverScrollableScrollPhysics(),
                    )

               /////////////////////// Changeable widget end /////////////////////////
             ),
           ),

           //////////// Form Body End ///////////////
           



           //////////////// Bottom Part Start////////////////
            
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 25),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
               color: Colors.white,
              // boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 5)],
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 SmoothPageIndicator(
                    controller: _controller,  // PageController
                    count:  5,
                    effect:  ExpandingDotsEffect(
                      //dotWidth: 24,
                      dotHeight: 7,
                      activeDotColor: Color(0xFFFF9100),
                      dotColor: Color(0xFFEAEAEA),
                    ),  // your preferred effect
                  ),


                  InkWell(
                    onTap: (){
                       _controller.nextPage(duration: _kDuration, curve: _kCurve);
                    },
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9100),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
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