import 'package:flutter/material.dart';

import '../data/electronic_components.dart';
import '../models/electronic_component.dart';

class CircuitCanvas extends StatelessWidget {
  const CircuitCanvas({super.key});

  final List<CircuitComponentPlacement> _placements = const [
    CircuitComponentPlacement(
      x: 70,
      y: 120,
      component: ElectronicComponent(
        id: 'battery',
        name: 'Battery',
        category: ElectronicPartCategory.source,
        symbol: '🔋',
        description: 'Power source',
      ),
    ),
    CircuitComponentPlacement(
      x: 240,
      y: 220,
      component: ElectronicComponent(
        id: 'led',
        name: 'LED',
        category: ElectronicPartCategory.diode,
        symbol: '💡',
        description: 'Status light',
      ),
    ),
    CircuitComponentPlacement(
      x: 80,
      y: 340,
      component: ElectronicComponent(
        id: 'resistor',
        name: 'Resistor',
        category: ElectronicPartCategory.linear,
        symbol: '🧩',
        description: 'Current limiting',
      ),
    ),
    CircuitComponentPlacement(
      x: 340,
      y: 320,
      component: ElectronicComponent(
        id: 'opamp',
        name: 'Op-Amp',
        category: ElectronicPartCategory.integratedCircuit,
        symbol: '⚙️',
        description: 'Signal amplifier',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Stack(
            children: [
              CustomPaint(
                size: Size(constraints.maxWidth, constraints.maxHeight),
                painter: CircuitGridPainter(),
              ),
              ..._placements.map(
                (placement) => Positioned(
                  left: placement.x,
                  top: placement.y,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          placement.component.symbol,
                          style: const TextStyle(fontSize: 22),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          placement.component.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CircuitGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..color = Colors.grey.shade100
      ..strokeWidth = 1;

    final connectionPaint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 2;

    for (double x = 0; x < size.width; x += 24) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }

    for (double y = 0; y < size.height; y += 24) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    canvas.drawLine(
      Offset(90, 150),
      Offset(205, 150),
      connectionPaint,
    );
    canvas.drawLine(
      Offset(205, 150),
      Offset(205, 260),
      connectionPaint,
    );
    canvas.drawLine(
      Offset(205, 260),
      Offset(315, 260),
      connectionPaint,
    );
    canvas.drawLine(
      Offset(90, 370),
      Offset(205, 370),
      connectionPaint,
    );
    canvas.drawLine(
      Offset(205, 370),
      Offset(205, 260),
      connectionPaint,
    );
    canvas.drawLine(
      Offset(315, 260),
      Offset(315, 350),
      connectionPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CircuitComponentPlacement {
  const CircuitComponentPlacement({
    required this.x,
    required this.y,
    required this.component,
  });

  final double x;
  final double y;
  final ElectronicComponent component;
}
