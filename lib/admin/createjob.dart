import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EditableListPage(),
  ));
}

class EditableListPage extends StatefulWidget {
  @override
  _EditableListPageState createState() => _EditableListPageState();
}

class _EditableListPageState extends State<EditableListPage> {
  List<TaskItem> tasks = [];

  // Controllers for text fields
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _payController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text('Editable List'),
        backgroundColor: Colors.grey[300],
        elevation: 10,
        shadowColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Work: ${tasks[index].task}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Pay: ${tasks[index].payment}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Location: ${tasks[index].location}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    tasks.removeAt(index);
                  });
                },
              ),
              onTap: () {
                _showEditDialog(context, index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[300],
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    String newTask = '';
    String newLocation = '';
    String newPayment = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Task'),
                  controller: _taskController,
                  onChanged: (value) {
                    newTask = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Location'),
                  controller: _locationController,
                  onChanged: (value) {
                    newLocation = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Payment'),
                  controller: _payController,
                  onChanged: (value) {
                    newPayment = value;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks.add(TaskItem(task: newTask, location: newLocation, payment: newPayment));
                });
                Navigator.of(context).pop();
                // Clear text fields after adding task
                _taskController.clear();
                _locationController.clear();
                _payController.clear();
              },
              child: Text('Add'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Set button color
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _showEditDialog(BuildContext context, int index) {
    String updatedTask = tasks[index].task;
    String updatedLocation = tasks[index].location;
    String updatedPayment = tasks[index].payment;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Task'),
                  controller: _taskController..text = tasks[index].task,
                  onChanged: (value) {
                    updatedTask = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Location'),
                  controller: _locationController..text = tasks[index].location,
                  onChanged: (value) {
                    updatedLocation = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Payment'),
                  controller: _payController..text = tasks[index].payment,
                  onChanged: (value) {
                    updatedPayment = value;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks[index].task = updatedTask;
                  tasks[index].location = updatedLocation;
                  tasks[index].payment = updatedPayment;
                });
                Navigator.of(context).pop();
              },
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Set button color
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // Dispose controllers when not needed to avoid memory leaks
    _taskController.dispose();
    _locationController.dispose();
    _payController.dispose();
    super.dispose();
  }
}

class TaskItem {
  String task;
  String location;
  String payment;

  TaskItem({required this.task, required this.location, required this.payment});
}
