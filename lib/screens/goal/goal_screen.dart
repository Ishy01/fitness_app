import 'package:flutter/material.dart';

class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          GoalCard(
            title: 'Weight Loss',
            progress: 0.6,
            onPressed: () {
              // Navigate to detailed goal screen
            },
          ),
          GoalCard(
            title: 'Muscle Gain',
            progress: 0.3,
            onPressed: () {
              // Navigate to detailed goal screen
            },
          ),
          GoalCard(
            title: 'Improved Endurance',
            progress: 0.8,
            onPressed: () {
              // Navigate to detailed goal screen
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add goal screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class GoalCard extends StatelessWidget {
  final String title;
  final double progress;
  final VoidCallback onPressed;

  GoalCard({required this.title, required this.progress, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        child: ListTile(
          leading: CircularProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[200],
          ),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward),
          onTap: onPressed,
        ),
      ),
    );
  }
}
