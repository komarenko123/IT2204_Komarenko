import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Калькулятор площади',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AreaCalculatorScreen(title: 'Калькулятор площади'),
    );
  }
}

class AreaCalculatorScreen extends StatefulWidget {
  final String title;
  const AreaCalculatorScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<AreaCalculatorScreen> createState() => _AreaCalculatorScreenState();
}

class _AreaCalculatorScreenState extends State<AreaCalculatorScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  static const List<String> _availableUnits = ['мм', 'см', 'м'];
  String _selectedUnit = _availableUnits.first;
  String _resultText = '';

  @override
  void dispose() {
    _widthController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  void _calculateArea() {
    if (!_formKey.currentState!.validate()) return;

    final width = double.parse(_widthController.text);
    final height = double.parse(_heightController.text);
    
    final convertedWidth = _convertToMillimeters(width, _selectedUnit);
    final convertedHeight = _convertToMillimeters(height, _selectedUnit);
    
    final areaInMm2 = convertedWidth * convertedHeight;
    final displayedArea = _convertFromMillimeters(areaInMm2, _selectedUnit);

    setState(() {
      _resultText = 'S = $width × $height = $displayedArea ${_selectedUnit}²';
    });

    _showSuccessSnackbar();
  }

  double _convertToMillimeters(double value, String unit) {
    switch (unit) {
      case 'см':
        return value * 10;
      case 'м':
        return value * 1000;
      default: 
        return value;
    }
  }

  double _convertFromMillimeters(double value, String unit) {
    switch (unit) {
      case 'см':
        return value * 0.01;
      case 'м':
        return value * 0.000001;
      default: 
        return value;
    }
  }

  void _showSuccessSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Расчёт выполнен успешно!'),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _buildUnitSelector() {
    return Row(
      children: [
        const Text('Единицы измерения: '),
        DropdownButton<String>(
          value: _selectedUnit,
          items: _availableUnits.map((unit) {
            return DropdownMenuItem<String>(
              value: unit,
              child: Text(unit),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() => _selectedUnit = newValue!);
          },
        ),
      ],
    );
  }

  Widget _buildDimensionInput({
    required String label,
    required TextEditingController controller,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          margin: const EdgeInsets.only(top: 14),
          child: Text(label, style: const TextStyle(fontSize: 16)),
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(border: OutlineInputBorder()),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d+)?$')),
            ],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Заполните поле';
              }
              if (double.tryParse(value) == null) {
                return 'Некорректное число';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUnitSelector(),
              const SizedBox(height: 16.0),
              _buildDimensionInput(label: 'Ширина:', controller: _widthController),
              const SizedBox(height: 16.0),
              _buildDimensionInput(label: 'Высота:', controller: _heightController),
              const SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _calculateArea,
                  child: const Text('Вычислить'),
                ),
              ),
              const SizedBox(height: 16.0),
              const Center(
                child: Text(
                  'задайте параметры',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(_resultText, style: const TextStyle(fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }
}