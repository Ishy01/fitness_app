import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage('assets/profile_picture.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Email: john.doe@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Statistics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_walk),
                title: Text('Total Steps'),
                trailing: Text('150,000'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_run),
                title: Text('Total Distance'),
                trailing: Text('200 km'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_fire_department),
                title: Text('Total Calories Burned'),
                trailing: Text('50,000 kcal'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to edit profile screen
                },
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
