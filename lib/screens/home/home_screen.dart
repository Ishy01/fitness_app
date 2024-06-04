import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Fitness Tracker!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Today\'s Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Icon(Icons.directions_walk),
                title: Text('Steps Taken'),
                trailing: Text('1200'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.local_fire_department),
                title: Text('Calories Burned'),
                trailing: Text('300 kcal'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.timer),
                title: Text('Active Minutes'),
                trailing: Text('45 min'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
