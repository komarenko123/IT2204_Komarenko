import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildListContent(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green[700],
      title: const Text(
        'Простой список',
        style: TextStyle(color: Colors.white),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  Widget _buildListContent() {
    const items = ['0000', '0001', '0010'];

    return ListView(
      children: items.map((item) => ListTile(title: Text(item))).toList(),
    );
  }
}