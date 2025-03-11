import 'dart:io'; 
import 'Machine.dart';
import 'Enums.dart';

void main() {

  Machine coffeeMachine = Machine();


  coffeeMachine.fillResources(100, 200, 300);


  stdout.write('Введите сумму денег: ');
  int? userMoney = int.tryParse(stdin.readLineSync() ?? '');
  if (userMoney == null) {
    print('Некорректный ввод суммы.');
    return;
  }


  print('Выберите тип кофе:');
  print('1 - Cappuccino (120)');
  print('2 - Espresso   (100)');
  print('3 - Americano  (80)');
  stdout.write('Ваш выбор: ');
  int? choice = int.tryParse(stdin.readLineSync() ?? '');
  if (choice == null) {
    print('Некорректный ввод.');
    return;
  }


  CoffeeType? selectedType;
  switch (choice) {
    case 1:
      selectedType = CoffeeType.cappuccino;
      break;
    case 2:
      selectedType = CoffeeType.espresso;
      break;
    case 3:
      selectedType = CoffeeType.americano;
      break;
    default:
      print('Некорректный выбор.');
      return;
  }


  int result = coffeeMachine.buyCoffee(selectedType, userMoney);

  if (result == -1) {
    print('Недостаточно ресурсов для приготовления выбранного кофе.');
  } else if (result == -2) {
    print('Недостаточно денег. Нужно больше средств!');
  } else {

    int change = result;
    print('Ваша сдача: $change');
  }

  print('\nОстаток ресурсов:');
  print('Кофейные зёрна: ${coffeeMachine.resources.coffeeBeans}');
  print('Молоко: ${coffeeMachine.resources.milk}');
  print('Вода: ${coffeeMachine.resources.water}');
  print('Касса (заработано): ${coffeeMachine.resources.cash}');
}
