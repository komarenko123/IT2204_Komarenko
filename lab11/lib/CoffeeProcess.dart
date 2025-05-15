import 'dart:async';

class CoffeeProcess {
  static Future<void> heatWater() => _process('water', 3);

  static Future<void> brewCoffee() => _process('espresso', 5, 'coffee with water');

  static Future<void> frothMilk() => _process('milk', 5);

  static Future<void> mixCoffeeAndMilk() => _process('mixing coffee and milk', 3, 'cappuccino');

  static Future<void> _process(String processName, int durationSeconds, [String? doneMessage]) async {
    print('start_process: $processName');
    await Future.delayed(Duration(seconds: durationSeconds));
    print('done_process: ${doneMessage ?? processName}');
  }
}