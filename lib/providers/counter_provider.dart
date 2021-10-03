import 'package:flutter/material.dart';
import 'package:provider_example/models/counter_model.dart';

class CounterProvider with ChangeNotifier {
  final CounterModel _counter = CounterModel();

  void incrementCounter() {
    _counter.counter++;
    notifyListeners();
  }

  CounterModel get counter => _counter;
}
