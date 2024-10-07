import 'package:flutter/material.dart';
import 'package:flutter_provider/count.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: const Center(child: Count()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Counter>().increment();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
