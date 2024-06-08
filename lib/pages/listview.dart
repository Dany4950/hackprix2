import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Define a model class for list items
class ListItem {
  final String title;
  final String description;
  final String location;

  ListItem({required this.title, required this.description, required this.location});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location List Example',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Sample data for the list
  final List<ListItem> items = List.generate(
    20,
    (index) => ListItem(
      title: 'Place ${index + 1}',
      description: 'Description for Place ${index + 1}',
      location: 'Location ${index + 1}',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List with Location Details'),
      ),
      body: ListView.builder(
        itemCount: items.length, // Number of items in the list
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.deepPurpleAccent),
              title: Text(
                item.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    item.description,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    item.location,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurpleAccent),
              onTap: () {
                // Handle item tap
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tapped on ${item.title}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
