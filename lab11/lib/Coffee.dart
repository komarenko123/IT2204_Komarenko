import 'MyCoffee.dart';
import 'Enums.dart';

class Coffee implements ICoffee {
  final CoffeeType type;

  Coffee(this.type);

  @override
  int coffeeBeans() => _getIngredients(type)['coffeeBeans'] as int;

  @override
  int milk() => _getIngredients(type)['milk'] as int;

  @override
  int water() => _getIngredients(type)['water'] as int;

  @override
  int cash() => _getIngredients(type)['cash'] as int;


  Map<String, int> _getIngredients(CoffeeType type) {
    switch (type) {
      case CoffeeType.cappuccino:
        return {'coffeeBeans': 10, 'milk': 50, 'water': 50, 'cash': 120};
      case CoffeeType.espresso:
        return {'coffeeBeans': 8, 'milk': 0, 'water': 30, 'cash': 100};
      case CoffeeType.americano:
        return {'coffeeBeans': 6, 'milk': 0, 'water': 100, 'cash': 80};
    }
  }
}