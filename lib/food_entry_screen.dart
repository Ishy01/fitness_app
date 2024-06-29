import 'package:fitness_app/models/food_item.dart';
import 'package:fitness_app/providers/food_entry_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodEntryScreen extends StatefulWidget {
  @override
  _FoodEntryScreenState createState() => _FoodEntryScreenState();
}

class _FoodEntryScreenState extends State<FoodEntryScreen> {
  final TextEditingController _controller = TextEditingController();
  List<FoodItem> _selectedFoodItems = [];

  @override
  Widget build(BuildContext context) {
    final foodEntryProvider = Provider.of<FoodEntryProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Search Food',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    foodEntryProvider.fetchFoodItems(_controller.text);
                  },
                ),
              ),
            ),
            Expanded(
              child: foodEntryProvider.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: foodEntryProvider.foodItems.length,
                      itemBuilder: (context, index) {
                        final foodItem = foodEntryProvider.foodItems[index];
                        return ListTile(
                          title: Text(foodItem.name),
                          subtitle: Text('${foodItem.calories} kcal'),
                          trailing: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _selectedFoodItems.add(foodItem);
                              });
                            },
                          ),
                        );
                      },
                    ),
            ),
            SizedBox(height: 16),
            Text(
              'Selected Food',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _selectedFoodItems.length,
                itemBuilder: (context, index) {
                  final foodItem = _selectedFoodItems[index];
                  return ListTile(
                    title: Text(foodItem.name),
                    subtitle: Text('${foodItem.calories} kcal'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          _selectedFoodItems.remove(foodItem);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Total Calories: ${_selectedFoodItems.fold(0, (sum, item) => sum + item.calories)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle saving the food entries
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
