// import 'package:flutter/material.dart';
// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
// import 'package:hackathon2/admin/homepage_admin.dart';
// import 'package:hackathon2/pages/signup.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class CarouselSliderPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Carousel Slider'),
//       ),
//       body: Center(
//         child: ExpandableCarousel(
//           items: [
//             // Section for Work
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup()),
//                 );
//               },
//               child: Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8.0),
//                   color: Colors.blue,
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Work',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // Section for Hire
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup()),
//                 );
//               },
//               child: Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8.0),
//                   color: Colors.green,
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Hire',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//           options: CarouselOptions(
//             height: 200.0,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             viewportFraction: 0.8,
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CarouselSliderPage(),
//   ));
// }
// import 'package:flutter/material.dart';
// import 'package:hackathon2/admin/homepage_admin.dart';
// import 'package:hackathon2/pages/signup.dart';
// import 'package:hackathon2/pages/signup_admin.dart';
// import 'package:hackathon2/worker/home_worker.dart';

// class LayeredGridPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Layered Grid'),
//       // ),
//       body: Stack(
//         children: [
//           // Work section
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             bottom: MediaQuery.of(context).size.height / 2,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Signup()),
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(24.0),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Click to Work',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Hire section
//           Positioned(
//             top: MediaQuery.of(context).size.height / 2,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignupAdmin()),
//                 );
//               },
//               child: Container(
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 decoration: BoxDecoration(
//                   color: Colors.purple,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(24.0),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Click to Hire',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: LayeredGridPage(),
//   ));
// }
import 'package:flutter/material.dart';
import 'package:hackathon2/admin/homepage_admin.dart';
import 'package:hackathon2/pages/signup.dart';
import 'package:hackathon2/pages/signup_admin.dart';
import 'package:hackathon2/worker/home_worker.dart';

class LayeredGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Work section
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.construction,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Click to Work',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Hire section
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupAdmin()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Click to Hire',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LayeredGridPage(),
  ));
}
