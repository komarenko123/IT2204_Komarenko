import 'ICoffee.dart';
import 'Enums.dart';

class Coffee implements ICoffee {
  final CoffeeType _type;

  Coffee(this._type);

  @override
  int coffeeBeans() {
    switch (_type) {
      case CoffeeType.cappuccino:
        return 10;
      case CoffeeType.espresso:
        return 8;
      case CoffeeType.americano:
        return 6;
    }
  }

  @override
  int milk() {
    switch (_type) {
      case CoffeeType.cappuccino:
        return 50;
      case CoffeeType.espresso:
        return 0;
      case CoffeeType.americano:
        return 0;
    }
  }

  @override
  int water() {
    switch (_type) {
      case CoffeeType.cappuccino:
        return 50;
      case CoffeeType.espresso:
        return 30;
      case CoffeeType.americano:
        return 100;
    }
  }

  @override
  int cash() {
    switch (_type) {
      case CoffeeType.cappuccino:
        return 120; 
      case CoffeeType.espresso:
        return 100;
      case CoffeeType.americano:
        return 80;
    }
  }
}
