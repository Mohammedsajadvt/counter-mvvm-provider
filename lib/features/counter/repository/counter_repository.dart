import 'package:mvvm/features/counter/services/counter_service.dart';

class CounterRepository {

  final CounterService _counterService = CounterService();


  // Increment
  int incrementCounter(int currentCount){
  return _counterService.incrementCounter(currentCount);
  }
  
  // Decrement
  int decrementCounter(int currentCount){
    return _counterService.degrementCounter(currentCount);
  }
  
  // Reset
  int resetCounter(int currentCount){
    return _counterService.resetCounter(currentCount);
  }
}