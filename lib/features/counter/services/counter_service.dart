class CounterService {
  // Increment
  int incrementCounter(int currentCount) {
    return currentCount + 1;
  }

  // Decrement
  int degrementCounter(int currentCount) {
    if (currentCount > 0) {
      return currentCount - 1;
    } else {
      return currentCount;
    }
  }

  // Reset
  int resetCounter(int currentCount){
   if(currentCount > 0){
    return currentCount = 0;
   }else{
    return currentCount;
   }
  }
}
