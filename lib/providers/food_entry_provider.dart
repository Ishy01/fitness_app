import 'package:fitness_app/models/food_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FoodEntryProvider with ChangeNotifier {
  List<FoodItem> _foodItems = [];
  bool _isLoading = false;

  List<FoodItem> get foodItems => _foodItems;
  bool get isLoading => _isLoading;

  Future<void> fetchFoodItems(String query) async {
    _isLoading = true;
    notifyListeners();

    final apiId = dotenv.env['API_ID'];
    final apiKey = dotenv.env['API_KEY'];
    final url =
        'https://api.edamam.com/api/food-database/v2/parser?ingr=$query&app_id=$apiId&app_key=$apiKey';
    print('Fetching data from: $url');
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('API response: $data');
      _foodItems = (data['hints'] as List)
          .map((item) => FoodItem.fromJson(item['food']))
          .toList();
    }

    _isLoading = false;
    notifyListeners();
  }

  void addFoodItem(FoodItem foodItem) {
    _foodItems.add(foodItem);
    notifyListeners();
  }

  void removeFoodItem(FoodItem foodItem) {
    _foodItems.remove(foodItem);
    notifyListeners();
  }

  int get totalCalories {
    return _foodItems.fold(0, (sum, item) => sum + item.calories);
  }
}
