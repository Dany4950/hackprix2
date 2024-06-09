import 'package:flutter/material.dart';
import 'package:hackathon2/admin/createjob.dart';
import 'package:hackathon2/pages/splash.dart';
import 'package:hackathon2/worker/applied.dart';
import 'package:hackathon2/worker/wallet.dart';

class WorkerProfile {
  final String name;
  final String skill;
  final String imageUrl;
  final int experience; // in years

  WorkerProfile({
    required this.name,
    required this.skill,
    required this.imageUrl,
    required this.experience,
  });
}

int _selectedIndex = 0;

class Homepage_admin extends StatelessWidget {
  final List<WorkerProfile> workerProfiles = [
    WorkerProfile(
      name: 'Muqeet Don',
      skill: 'flutter devp',
      imageUrl:
          'https://img.freepik.com/free-photo/medium-shot-portrait-smiling-architect-pointing-away_23-2148233756.jpg?size=626&ext=jpg&ga=GA1.1.1652741584.1717907628&semt=ais_user',
      experience: 5,
    ),
    WorkerProfile(
      name: 'Anna Babu',
      skill: 'Electrician',
      imageUrl:
          'https://img.freepik.com/free-photo/medium-shot-portrait-smiling-architect-pointing-away_23-2148233756.jpg?size=626&ext=jpg&ga=GA1.1.1652741584.1717907628&semt=ais_user',
      experience: 5,
    ),
    WorkerProfile(
      name: 'John Babu',
      skill: 'Electrician',
      imageUrl:
          'https://img.freepik.com/free-photo/medium-shot-portrait-smiling-architect-pointing-away_23-2148233756.jpg?size=626&ext=jpg&ga=GA1.1.1652741584.1717907628&semt=ais_user',
      experience: 5,
    ),
    WorkerProfile(
      name: 'Ramesh Anna',
      skill: 'Plumber',
      imageUrl:
          'https://img.freepik.com/free-photo/working-hard-building-man-construction-worker_1122-1849.jpg?size=626&ext=jpg&ga=GA1.1.1652741584.1717907628&semt=ais_user',
      experience: 7,
    ),
    WorkerProfile(
      name: 'Suresh don',
      skill: 'Carpenter',
      imageUrl:
          'https://img.freepik.com/free-photo/medium-shot-side-view-excited-architect_23-2148233760.jpg?w=2000&t=st=1717907756~exp=1717908356~hmac=b59d7a89043d5c0a8fa89f91edbff336629dd62b3ed9fa668d4d1bc2daf36fb3',
      experience: 3,
    ),
    WorkerProfile(
      name: 'Mallesh bhai ',
      skill: 'Painter',
      imageUrl:
          'https://img.freepik.com/free-photo/civil-engineer-construction-worker-manager-holding-digital-tablet-blueprints-talking-planing-about-construction-site-cooperation-teamwork-concept_640221-156.jpg?t=st=1717907670~exp=1717911270~hmac=370f7f5be00bb5b194cb80bf6435f0efd4d68a1034f38f0bd37b49bf87938719&w=2000',
      experience: 8,
    ),
    // Add more worker profiles as needed
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Splash()));
              },
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          'Job Link',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: GridView.builder(
          itemCount: workerProfiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) {
            final worker = workerProfiles[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkerDetailPage(worker: worker),
                  ),
                );
              },
              child: WorkerProfileCard(worker: worker),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        onTap: (value) {
          switch (value) {
            case 0:
              // Navigate to the Home screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage_admin()),
              );
              break;
            case 1:
              // Navigate to the Wallet screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wallet()),
              );
              break;
            case 2:
              // Navigate to the Applied screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditableListPage()),
              );
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Tapped on BottomNavigationBar item $value'),
            ),
          );
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Create Task"),
        ],
        currentIndex: _selectedIndex,
      ),
    );
  }
}

class WorkerProfileCard extends StatelessWidget {
  final WorkerProfile worker;

  WorkerProfileCard({required this.worker});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                worker.imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                worker.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                worker.skill,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '${worker.experience} years experience',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkerDetailPage extends StatelessWidget {
  final WorkerProfile worker;

  WorkerDetailPage({required this.worker});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(worker.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  worker.imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              worker.name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Skill: ${worker.skill}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepPurple[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Experience: ${worker.experience} years',
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepPurple[500],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // Action to perform on button press
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Hired ${worker.name} successfully!')),
                );
              },
              child: Text('Hire ${worker.name}'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Homepage_admin(),
  ));
}
