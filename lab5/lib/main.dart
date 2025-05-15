import 'package:flutter/material.dart';
import 'components/simple_list.dart';
import 'components/infinity_list.dart';
import 'components/infinity_math_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа 5',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<Map<String, dynamic>> _navigationItems = [
    {
      'title': 'Простой список',
      'page': const SimpleList(),
    },
    {
      'title': 'Бесконечный список (номера строк)',
      'page': const InfinityList(),
    },
    {
      'title': 'Бесконечный список (2 в степени)',
      'page': const InfinityMathList(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildNavigationList(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green[700],
      title: const Text(
        'Лабораторная работа 5',
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  Widget _buildNavigationList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _navigationItems.map((item) {
        return _buildNavigationTile(
          context,
          title: item['title'] as String,
          targetPage: item['page'] as Widget,
        );
      }).toList(),
    );
  }

  Widget _buildNavigationTile(
      BuildContext context, {
        required String title,
        required Widget targetPage,
      }) {
    return InkWell(
      onTap: () => _navigateTo(context, targetPage),
      child: Container(
        color: Colors.green[600],
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}