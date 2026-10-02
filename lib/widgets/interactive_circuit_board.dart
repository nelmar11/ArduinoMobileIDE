import 'package:flutter/material.dart';

import '../widgets/interactive_circuit_board.dart';

class InteractiveCircuitScreen extends StatelessWidget {
  const InteractiveCircuitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circuit Designer'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow_rounded),
          ),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: InteractiveCircuitBoard(),
        ),
      ),
    );
  }
}

