import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    final myProvider = context.watch<Counter>();
    return Text(
      myProvider.count.toString(),
      textScaler: const TextScaler.linear(5),
    );
  }
}
