import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathList extends StatelessWidget {
  const InfinityMathList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildPowerOfTwoList(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green[700],
      title: const Text(
        'Бесконечный список (2 в степени)',
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  Widget _buildPowerOfTwoList() {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        final power = index;
        final result = pow(2, power);
        return ListTile(
          title: Text('2^$power = $result'),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}