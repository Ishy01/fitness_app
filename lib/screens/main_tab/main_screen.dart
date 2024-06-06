import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/common_widgets/combined_gradient.dart';
import 'package:fitness_app/screens/activity/activity_screen.dart';
import 'package:fitness_app/screens/goal/goal_screen.dart';
import 'package:fitness_app/screens/home/home_screen.dart';
import 'package:fitness_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ActivityScreen(),
    GoalsScreen(),
    ProfileScreen(),
  ];

  final Gradient secondaryGradient = LinearGradient(
    colors: [TextColor.primaryColor2, TextColor.primaryColor1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: GradientIconWithText(
              icon: Icons.home,
              label: 'Home',
              gradient: secondaryGradient,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: 'Activity',
            activeIcon: GradientIconWithText(
              icon: Icons.directions_run,
              label: 'Activity',
              gradient: secondaryGradient,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Goals',
            activeIcon: GradientIconWithText(
              icon: Icons.flag,
              label: 'Goals',
              gradient: secondaryGradient,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            activeIcon: GradientIconWithText(
              icon: Icons.person,
              label: 'Profile',
              gradient: secondaryGradient,
            ),
          ),
        ],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }
}
