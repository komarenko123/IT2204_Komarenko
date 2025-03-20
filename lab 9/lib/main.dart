import 'Coffe.dart';
Future<void> main() async {
  Machine machine = Machine(0,0,0,0);
  machine.setResource(100);

  print(machine.makingCoffee(25,10,10,10, "Флэт Уайт"));
}