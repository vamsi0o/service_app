

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/services.dart';

class OnBordingScreen extends StatefulWidget {

  static const String id = 'onbord-screen';

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();

}

class _OnBordingScreenState extends State<OnBordingScreen> {
  int scrollerPosition = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
    );
    return Scaffold(
      body: Stack(

        children: [


          PageView(
            onPageChanged: (val){
              setState(() {
                scrollerPosition =val.toInt();
              });
            },
            children: [
              OnbordPage(
               boardColumn: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Align(
                     alignment: Alignment.topRight,
                     child: Padding(
                       padding: EdgeInsets.all(16.0),
                       child: ElevatedButton(
                         onPressed: () {// Handle skip button press
                         },
                         style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20.0),
                               // You can adjust the corner radius as needed
                             ),
                           ),
                           backgroundColor: MaterialStateProperty.all<Color>(
                             Colors.greenAccent,
                             // Customize the button background color
                           ),
                         ),
                         child: Text('Skip'),

                       ),
                     ),
                   ),
                  SizedBox(height: 50,),
                   SizedBox(
                       height: 300,
                       width: 300,
                       child: Image.asset('assets/images/b.jpg')),
                   Text('Welcome to service app',
                     textAlign: TextAlign.center,
                     style: TextStyle(fontWeight: FontWeight.bold,
                         color: Colors.black,
                        fontSize: 30
                     ),
                   ),
                   Text('+20 service',
                     textAlign: TextAlign.center,
                     style: TextStyle(fontWeight: FontWeight.bold,
                         color: Colors.black,
                         fontSize: 30
                     ),
                   ),

                 ],
               ),
              ),
              OnbordPage(
                boardColumn: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          onPressed: () {// Handle skip button press
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                // You can adjust the corner radius as needed
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.greenAccent,
                              // Customize the button background color
                            ),
                          ),
                          child: Text('Skip'),

                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/c.jpeg')),
                    Text('House cleaning',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30
                      ),
                    ),
                    const Text('with advance technology',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22
                      ),
                    ),

                  ],
                ),
              ),
              OnbordPage(
                boardColumn: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/d.jpeg')),
                    Text('Low cost',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30
                      ),
                    ),
                   const Text('Best offers',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25
                      ),
                    ),
                    const Text('It gives worlds best services given\n Effectual price for the services',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15
                      ),
                    ),
                   SizedBox(height: 20,),
                   ElevatedButton(

                        child:Text('Get Stated'),
                     onPressed: (){},

                     style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        primary: Colors.indigoAccent, // Set the background color of the button
                      ),
                   ),

                  ],
                ),
              ),

            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              DotsIndicator(
                dotsCount:3,
                position: scrollerPosition,
                decorator: DotsDecorator(
                  activeColor: Colors.indigoAccent
                ),

              ),

                SizedBox(height: 100,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class OnbordPage extends StatelessWidget {


final Column? boardColumn;

OnbordPage({super.key, this.boardColumn});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Center(child: boardColumn),
    );
  }
}

