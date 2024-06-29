import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/providers/food_entry_provider.dart';
import 'package:fitness_app/screens/activity/activity_screen.dart';
import 'package:fitness_app/food_entry_screen.dart';
import 'package:fitness_app/screens/goal/goal_screen.dart';
import 'package:fitness_app/screens/home/gym_screen.dart';
import 'package:fitness_app/screens/home/home_screen.dart';
import 'package:fitness_app/screens/home/recipe_scree.dart';
import 'package:fitness_app/screens/main_tab/main_screen.dart';
import 'package:fitness_app/screens/on_boarding/started_view.dart';
import 'package:fitness_app/screens/profile/profile_screen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// void main() async {
//   await dotenv.load(fileName: ".env");
//   print(dotenv.env['API_ID']);
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Poppins",
        primaryColor: TextColor.primaryColor1,
      ),
      home: MainScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/activities': (context) => ActivitiesScreen(),
        '/goals': (context) => GoalsScreen(),
        '/gym': (context) => GymWorkoutScreen(),
        '/recipe': (context) => RecipeScreen(),
        // '/food_entry': (context) => FoodEntryScreen(),
      },
    );
  }
}
