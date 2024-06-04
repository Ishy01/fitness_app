import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ActivityCard(
            title: 'Walking',
            icon: Icons.directions_walk,
            onPressed: () {
              // Navigate to detailed tracking screen for walking
            },
          ),
          ActivityCard(
            title: 'Running',
            icon: Icons.directions_run,
            onPressed: () {
              // Navigate to detailed tracking screen for running
            },
          ),
          ActivityCard(
            title: 'Cycling',
            icon: Icons.directions_bike,
            onPressed: () {
              // Navigate to detailed tracking screen for cycling
            },
          ),
          ActivityCard(
            title: 'Swimming',
            icon: Icons.pool,
            onPressed: () {
              // Navigate to detailed tracking screen for swimming
            },
          ),
          ActivityCard(
            title: 'Gym Workouts',
            icon: Icons.fitness_center,
            onPressed: () {
              // Navigate to detailed tracking screen for gym workouts
            },
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  ActivityCard({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward),
        onTap: onPressed,
      ),
    );
  }
}
