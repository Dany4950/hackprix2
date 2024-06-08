import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Homepage_worker extends StatefulWidget {
  const Homepage_worker({super.key});

  @override
  State<Homepage_worker> createState() => _Homepage_workerState();
}

class _Homepage_workerState extends State<Homepage_worker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.deepPurpleAccent[100],
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Icon(
              Icons.construction,
              size: 40,
            ),
            SizedBox(
              height: 80,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "History",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Applied jobs",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Payments",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Saved jobs",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // actions: <Widget>[
        //   // Center(
        //   //   child: Image(image: AssetImage('assets/profile_pic.jpeg')),
        //   // ),
        // ],
        actions: [
          IconButton(
              hoverColor: Colors.deepPurpleAccent.withOpacity(0.8),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => call()));
              },
              icon: Icon(
                Icons.phone_rounded,
                size: 40,
              ))
        ],
        shadowColor: Colors.deepPurpleAccent,
        elevation: 10,
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ExpandableCarousel(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Colors.black,
                        ),
                        height: 250,
                        child: Center(
                          child: Text(
                            'Task $i',
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white),
                          ),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        onTap: (value) {},
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home "),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Payments"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "applied"),
        ],
      ),
    );
  }
}
