// import 'package:flutter/material.dart';
// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
// import 'package:hackathon2/worker/call.dart';

// class Homepage_worker extends StatefulWidget {
//   const Homepage_worker({super.key});

//   @override
//   State<Homepage_worker> createState() => _Homepage_workerState();
// }

// class ListItem {
//   final String title;
//   final String description;
//   final String location;

//   ListItem({
//     required this.title,
//     required this.description,
//     required this.location,
//   });
// }

// class _Homepage_workerState extends State<Homepage_worker> {
//   // Manually specified data for the list
//   final List<ListItem> items = [
//     ListItem(
//       title: 'Fix Plumbing',
//       description: 'Fix the leaking pipe in the kitchen.',
//       location: '123 Main Street, Springfield',
//     ),
//     ListItem(
//       title: 'Install Lights',
//       description: 'Install new LED lights in the office.',
//       location: '456 Elm Street, Shelbyville',
//     ),
//     ListItem(
//       title: 'Paint House',
//       description: 'Repaint the living room walls.',
//       location: '789 Oak Street, Ogdenville',
//     ),
//     ListItem(
//       title: 'Repair Roof',
//       description: 'Fix the roof tiles damaged by the storm.',
//       location: '321 Pine Street, North Haverbrook',
//     ),
//     ListItem(
//       title: 'Garden Cleanup',
//       description: 'Trim the bushes and mow the lawn.',
//       location: '654 Maple Street, Capital City',
//     ),
//     ListItem(
//       title: 'Fix Door',
//       description: 'Repair the broken door hinge.',
//       location: '987 Cedar Street, Cypress Creek',
//     ),
//     ListItem(
//       title: 'Install AC',
//       description: 'Set up a new air conditioning unit.',
//       location: '111 Birch Street, Monorail Town',
//     ),
//     ListItem(
//       title: 'Move Furniture',
//       description: 'Help with moving furniture to the new apartment.',
//       location: '222 Spruce Street, Evergreen Terrace',
//     ),
//     ListItem(
//       title: 'Clean Gutters',
//       description: 'Clear out the leaves from the gutters.',
//       location: '333 Fir Street, Lake Springfield',
//     ),
//     ListItem(
//       title: 'Replace Windows',
//       description: 'Replace the old windows with new ones.',
//       location: '444 Walnut Street, Capital City',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         width: 250,
//         backgroundColor: Colors.deepPurpleAccent[100],
//         child: Column(
//           children: [
//             SizedBox(height: 150),
//             Icon(Icons.construction, size: 40),
//             SizedBox(height: 80),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 "History",
//                 style: TextStyle(fontSize: 23, color: Colors.black),
//               ),
//             ),
//             SizedBox(height: 40),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 "Applied jobs",
//                 style: TextStyle(fontSize: 23, color: Colors.black),
//               ),
//             ),
//             SizedBox(height: 40),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 "Payments",
//                 style: TextStyle(fontSize: 23, color: Colors.black),
//               ),
//             ),
//             SizedBox(height: 40),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 "Saved jobs",
//                 style: TextStyle(fontSize: 23, color: Colors.black),
//               ),
//             ),
//             SizedBox(height: 40),
//             TextButton(
//               onPressed: () {},
//               child: Text(
//                 "Logout",
//                 style: TextStyle(fontSize: 23, color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             icon: Icon(Icons.info),
//             tooltip: 'Show Info', // Tooltip on long press
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Phone()),
//               );
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text('Info button pressed!'),
//                 ),
//               );
//             },
//           ),
//           // Add more IconButtons here if needed
//         ],
//         shadowColor: Colors.deepPurpleAccent,
//         elevation: 10,
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.deepPurple[100],
//       body: Column(
//         children: [
//           SizedBox(height: 30),
//           ExpandableCarousel(
//             options: CarouselOptions(
//               autoPlay: true,
//               autoPlayInterval: const Duration(seconds: 4),
//             ),
//             items: [1, 2, 3, 4, 5].map((i) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: EdgeInsets.symmetric(horizontal: 5.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(80),
//                         color: Colors.black,
//                       ),
//                       height: 200,
//                       child: Center(
//                         child: Text(
//                           'Task $i',
//                           style: TextStyle(fontSize: 30.0, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//           SizedBox(height: 20),
//           // Adding ListView.builder for the list of items
//           Expanded(
//             child: ListView.builder(
//               itemCount: items.length, // Number of items in the list
//               itemBuilder: (context, index) {
//                 final item = items[index];
//                 return Card(
//                   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   child: ListTile(
//                     leading: Icon(Icons.location_on, color: Colors.deepPurpleAccent),
//                     title: Text(
//                       item.title,
//                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                     subtitle: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 5),
//                         Text(
//                           item.description,
//                           style: TextStyle(fontSize: 14),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           item.location,
//                           style: TextStyle(color: Colors.grey, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                     trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurpleAccent),
//                     onTap: () {
//                       // Handle item tap
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Tapped on ${item.title}'),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.deepPurple,
//         onTap: (value) {
//           // Handle navigation tap
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Tapped on BottomNavigationBar item $value'),
//             ),
//           );
//         },
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
//           BottomNavigationBarItem(icon: Icon(Icons.work), label: "Applied"),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:hackathon2/worker/call.dart';

class Homepage_worker extends StatefulWidget {
  const Homepage_worker({super.key});

  @override
  State<Homepage_worker> createState() => _Homepage_workerState();
}

class ListItem {
  final String title;
  final String description;
  final String location;

  ListItem({
    required this.title,
    required this.description,
    required this.location,
  });
}

class _Homepage_workerState extends State<Homepage_worker> {
  // Manually specified data for the list
  final List<ListItem> items = [
    ListItem(
      title: 'Fix Plumbing',
      description: 'Fix the leaking pipe in the kitchen.',
      location: '123 Main Street, Springfield',
    ),
    ListItem(
      title: 'Hospital Construction ',
      description: '₹ 500 per day ',
      location: 'Lords Institute of tech.',
    ),
    ListItem(
      title: 'Install Lights',
      description: 'Install new LED lights in the office.',
      location: '456 Elm Street, Shelbyville',
    ),
    ListItem(
      title: 'Paint House',
      description: 'Repaint the living room walls.',
      location: '789 Oak Street, Ogdenville',
    ),
    ListItem(
      title: 'Repair Roof',
      description: 'Fix the roof tiles damaged by the storm.',
      location: '321 Pine Street, North Haverbrook',
    ),
    ListItem(
      title: 'Garden Cleanup',
      description: 'Trim the bushes and mow the lawn.',
      location: '654 Maple Street, Capital City',
    ),
    ListItem(
      title: 'Fix Door',
      description: 'Repair the broken door hinge.',
      location: '987 Cedar Street, Cypress Creek',
    ),
    ListItem(
      title: 'Install AC',
      description: 'Set up a new air conditioning unit.',
      location: '111 Birch Street, Monorail Town',
    ),
    ListItem(
      title: 'Move Furniture',
      description: 'Help with moving furniture to the new apartment.',
      location: '222 Spruce Street, Evergreen Terrace',
    ),
    ListItem(
      title: 'Clean Gutters',
      description: 'Clear out the leaves from the gutters.',
      location: '333 Fir Street, Lake Springfield',
    ),
    ListItem(
      title: 'Replace Windows',
      description: 'Replace the old windows with new ones.',
      location: '444 Walnut Street, Capital City',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.deepPurpleAccent[100],
        child: Column(
          children: [
            SizedBox(height: 150),
            Icon(Icons.construction, size: 40),
            SizedBox(height: 80),
            TextButton(
              onPressed: () {},
              child: Text(
                "History",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                "Applied jobs",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                "Payments",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                "Saved jobs",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
            SizedBox(height: 40),
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
        title: Text("Job Link"),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            tooltip: 'Show Info', // Tooltip on long press
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Phone()),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Info button pressed!'),
                ),
              );
            },
          ),
          // Add more IconButtons here if needed
        ],
        shadowColor: Colors.deepPurpleAccent,
        elevation: 10,
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          SizedBox(height: 30),
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
                      height: 200,
                      child: Center(
                        child: Text(
                          'Task $i',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          // Adding GridView.builder for the grid of items
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                childAspectRatio:
                    1.0, // Adjust this to change the size of the boxes
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: items.length, // Number of items in the grid
              itemBuilder: (context, index) {
                final item = items[index];
                return GestureDetector(
                  onTap: () {
                    // Handle tile tap
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Tapped on ${item.title}'),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on,
                            color: Colors.deepPurpleAccent, size: 30),
                        SizedBox(height: 10),
                        Text(
                          item.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          item.description,
                          style: TextStyle(fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Text(
                          item.location,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        onTap: (value) {
          // Handle navigation tap
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Tapped on BottomNavigationBar item $value'),
            ),
          );
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Applied"),
        ],
      ),
    );
  }
}
