import 'package:flutter/material.dart';
import 'package:mvvm/features/counter/models/counter_model.dart';
import 'package:mvvm/features/counter/repository/counter_repository.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel _counter = CounterModel(count: 0);
  final CounterRepository _repository = CounterRepository();

  int get count => _counter.count;



  // Increment
  void increment() {
    _counter.count = _repository.incrementCounter(count);
    notifyListeners();
  }

 
  // Decrement
  void degrement() {
    _counter.count = _repository.decrementCounter(count);
    notifyListeners();
  }


  // Reset
  void reset(){
    _counter.count = _repository.resetCounter(count);
    notifyListeners();
  }
}
