import 'package:flutter/material.dart';
import 'package:mvvm/features/counter/models/counter_model.dart';
import 'package:mvvm/features/counter/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter MVVM'),
      ),
      body: Center(
        child: Consumer<CounterViewModel>(
            builder: (context, countViewModel, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                'Count:${countViewModel.count}',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ElevatedButton(onPressed: () {
                    countViewModel.increment();
                  }, child: Text('Increment')),
                  ElevatedButton(onPressed: () {
                    countViewModel.reset();
                  }, child: Text('Reset')),
                  ElevatedButton(onPressed: () {
                    countViewModel.degrement();
                  }, child: Text('Decrement')),
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
