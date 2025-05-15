import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Навигация и передача данных',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}

class AppRoutes {
  static const String home = '/';
  static const String selection = '/second';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const FirstScreen(),
    selection: (context) => const SecondScreen(),
  };
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context, 'Возвращение значения'),
      body: _buildContent(context),
    );
  }

  AppBar _buildAppBar(BuildContext context, String title) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Center(
      child: _buildSelectionButton(context),
    );
  }

  Widget _buildSelectionButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      onPressed: () => _navigateAndShowSelection(context),
      child: const Text('Приступить к выбору...'),
    );
  }

  Future<void> _navigateAndShowSelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, AppRoutes.selection);
    if (result != null) {
      _showSelectionResult(context, result.toString());
    }
  }

  void _showSelectionResult(BuildContext context, String result) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Вы выбрали: $result')),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context, 'Выберите любой вариант'),
      body: _buildSelectionContent(context),
    );
  }

  AppBar _buildAppBar(BuildContext context, String title) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _buildSelectionContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Сделайте выбор:', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          _buildOptionButton(context, 'Да'),
          const SizedBox(height: 10),
          _buildOptionButton(context, 'Нет'),
        ],
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String option) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      onPressed: () => _returnSelection(context, option),
      child: Text(option),
    );
  }

  void _returnSelection(BuildContext context, String option) {
    Navigator.pop(context, option);
  }
}