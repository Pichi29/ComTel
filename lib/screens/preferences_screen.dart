import 'package:flutter/material.dart';
import 'results_screen.dart'; //importamos results_screen.dart

class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  PreferencesScreenState createState() => PreferencesScreenState();
}

class PreferencesScreenState extends State<PreferencesScreen> {
  final List<String> _features = [
    'Cámara',
    'Batería',
    'Pantalla',
    'Almacenamiento',
    'Procesador',
    'Carga Rapida',
    'Plegable',
    'Resistente al Agua',
    'Diseño',
    'IOS',
    'Android'
  ];

  final List<String> _selectedFeatures = [];

  RangeValues _selectedBudgetRange = const RangeValues(500, 20000);
  final TextEditingController _startBudgetController = TextEditingController();
  final TextEditingController _endBudgetController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _startBudgetController.text = _selectedBudgetRange.start.toInt().toString();
    _endBudgetController.text = _selectedBudgetRange.end.toInt().toString();
  }

  void _updateBudgetFromText() {
    double start = double.tryParse(_startBudgetController.text) ??
        _selectedBudgetRange.start;
    double end =
        double.tryParse(_endBudgetController.text) ?? _selectedBudgetRange.end;
    if (start < end && start >= 0 && end <= 50000) {
      setState(() {
        _selectedBudgetRange = RangeValues(start, end);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elige tus preferencias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Presupuesto (pesos mexicanos)',
              style: TextStyle(fontSize: 18),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: RangeSlider(
                values: _selectedBudgetRange,
                min: 0,
                max: 50000,
                divisions: 40,
                labels: RangeLabels(
                  '\$${_selectedBudgetRange.start.toInt()}',
                  '\$${_selectedBudgetRange.end.toInt()}',
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _selectedBudgetRange = values;
                    _startBudgetController.text =
                        _selectedBudgetRange.start.toInt().toString();
                    _endBudgetController.text =
                        _selectedBudgetRange.end.toInt().toString();
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Rango Seleccionado: \$${_selectedBudgetRange.start.toInt()} - \$${_selectedBudgetRange.end.toInt()}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: _startBudgetController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Presupuesto Mínimo',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                      onChanged: (value) {
                        _updateBudgetFromText();
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: _endBudgetController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Presupuesto Máximo',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                      onChanged: (value) {
                        _updateBudgetFromText();
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Características Prioritarias',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView(
                children: _features.map((feature) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: CheckboxListTile(
                      title: Text(feature),
                      value: _selectedFeatures.contains(feature),
                      onChanged: (bool? isChecked) {
                        setState(() {
                          if (isChecked == true) {
                            _selectedFeatures.add(feature);
                          } else {
                            _selectedFeatures.remove(feature);
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsScreen(
                        presupuesto:
                            '${_selectedBudgetRange.start.toInt()} - ${_selectedBudgetRange.end.toInt()}',
                        prioridad: _selectedFeatures.join(', '),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Buscar Celulares'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
