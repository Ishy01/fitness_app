class FoodItem {
  final String name;
  final int calories;

  FoodItem({required this.name, required this.calories});

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      name: json['label'],
      calories: (json['nutrients']['ENERC_KCAL'] as num).toInt(),
    );
  }
}
