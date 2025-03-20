import 'Resources.dart';
import 'ICoffee.dart';
import 'Coffee.dart';
import 'Enums.dart';

class Machine {

  Resources resources = Resources();


  void fillResources(int beans, int milk, int water) {
    resources.coffeeBeans += beans;
    resources.milk += milk;
    resources.water += water;
  }


  bool isAvailableResources(ICoffee coffee) {
    return (resources.coffeeBeans >= coffee.coffeeBeans() &&
            resources.milk >= coffee.milk() &&
            resources.water >= coffee.water());
  }

  
  int buyCoffee(CoffeeType type, int userMoney) {
    ICoffee coffee = Coffee(type);


    if (!isAvailableResources(coffee)) {
      return -1; 
    }


    if (userMoney < coffee.cash()) {
      return -2; 
    }


    makeCoffee(coffee);


    resources.cash += coffee.cash();


    int change = userMoney - coffee.cash();
    return change;
  }


  void makeCoffee(ICoffee coffee) {
    resources.coffeeBeans -= coffee.coffeeBeans();
    resources.milk -= coffee.milk();
    resources.water -= coffee.water();
    print('Кофе готов! Приятного дня!');
  }
}
