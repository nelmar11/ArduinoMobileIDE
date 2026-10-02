import 'package:flutter/material.dart';

import '../widgets/circuit_canvas.dart';

class CircuitWorkspaceScreen extends StatelessWidget {
  const CircuitWorkspaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circuit Workspace'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.wifi_tethering_rounded, color: Colors.green),
                    SizedBox(width: 8),
                    Expanded(child: Text('Simulation ready')),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Expanded(
                child: CircuitCanvas(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
