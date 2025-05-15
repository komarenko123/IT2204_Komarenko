import 'dart:io';
import 'Machine.dart';
import 'Enums.dart';

Future<void> main() async {
  final coffeeMachine = Machine();
  coffeeMachine.fillResources(100, 200, 300);

  final userMoney = _getUserMoney();
  if (userMoney == null) return;

  final selectedType = _getCoffeeType();
  if (selectedType == null) return;

  final result = await coffeeMachine.buyCoffee(selectedType, userMoney);
  _processResult(result);

  _printResourceReport(coffeeMachine);
}

int? _getUserMoney() {
  stdout.write('Введите сумму : ');
  final input = int.tryParse(stdin.readLineSync() ?? '');
  if (input == null) {
    print('Некорректный ввод суммы');
    return null;
  }
  return input;
}

CoffeeType? _getCoffeeType() {
  print('Выберите тип кофе:');
  print('1 - Cappuccino (120)');
  print('2 - Espresso   (100)');
  print('3 - Americano  (80)');
  stdout.write('Ваш выбор: ');

  final choice = int.tryParse(stdin.readLineSync() ?? '');
  if (choice == null) {
    print('Некорректный ввод.');
    return null;
  }

  switch (choice) {
    case 1:
      return CoffeeType.cappuccino;
    case 2:
      return CoffeeType.espresso;
    case 3:
      return CoffeeType.americano;
    default:
      print('Некорректный выбор.');
      return null;
  }
}

void _processResult(int result) {
  if (result == -1) {
    print('Недостаточно ресурсов для приготовления выбранного кофе.');
  } else if (result == -2) {
    print('Недостаточно денег. Нужно больше средств!');
  } else {
    print('Ваша сдача: $result');
  }
}

void _printResourceReport(Machine coffeeMachine) {
  print('\nОстаток ресурсов:');
  print('Кофейные зёрна: ${coffeeMachine.resources.coffeeBeans}');
  print('Молоко: ${coffeeMachine.resources.milk}');
  print('Вода: ${coffeeMachine.resources.water}');
  print('Касса (заработано): ${coffeeMachine.resources.cash}');
}