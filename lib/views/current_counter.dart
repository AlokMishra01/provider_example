import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/counter_provider.dart';

class CurrentCounter extends StatelessWidget {
  const CurrentCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Counter'),
      ),
      body: Center(
        child: Text(
          '${counterProvider.counter.counter}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
