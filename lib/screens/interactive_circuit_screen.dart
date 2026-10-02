import 'package:flutter/material.dart';

class InteractiveCircuitBoard extends StatefulWidget {
  const InteractiveCircuitBoard({super.key});

  @override
  State<InteractiveCircuitBoard> createState() => _InteractiveCircuitBoardState();
}

class _InteractiveCircuitBoardState extends State<InteractiveCircuitBoard> {
  final List<CircuitNode> _nodes = const [
    CircuitNode(id: 'power', x: 80, y: 110, label: 'Power'),
    CircuitNode(id: 'led', x: 260, y: 170, label: 'LED'),
    CircuitNode(id: 'resistor', x: 120, y: 300, label: 'Resistor'),
    CircuitNode(id: 'mcu', x: 380, y: 260, label: 'MCU'),
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
                painter: CircuitConnectionPainter(_nodes),
                size: Size(constraints.maxWidth, constraints.maxHeight),
              ),
              ..._nodes.map(
                (node) => Positioned(
                  left: node.x,
                  top: node.y,
                  child: Draggable<CircuitNode>(
                    data: node,
                    feedback: _NodeWidget(node: node),
                    childWhenDragging: Opacity(
                      opacity: 0.4,
                      child: _NodeWidget(node: node),
                    ),
                    child: _NodeWidget(node: node),
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

class _NodeWidget extends StatelessWidget {
  const _NodeWidget({required this.node});

  final CircuitNode node;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: node.label == 'Power'
                  ? Colors.orange
                  : node.label == 'LED'
                      ? Colors.yellow
                      : node.label == 'Resistor'
                          ? Colors.purple
                          : Colors.blue,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            node.label,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class CircuitConnectionPainter extends CustomPainter {
  const CircuitConnectionPainter(this.nodes);

  final List<CircuitNode> nodes;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final gridPaint = Paint()
      ..color = Colors.grey.shade100
      ..strokeWidth = 1;

    for (double x = 0; x < size.width; x += 28) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }

    for (double y = 0; y < size.height; y += 28) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    final power = nodes.firstWhere((n) => n.id == 'power');
    final led = nodes.firstWhere((n) => n.id == 'led');
    final resistor = nodes.firstWhere((n) => n.id == 'resistor');
    final mcu = nodes.firstWhere((n) => n.id == 'mcu');

    final points = [
      Offset(power.x + 60, power.y + 18),
      Offset(power.x + 150, power.y + 18),
      Offset(power.x + 150, led.y + 18),
      Offset(led.x + 60, led.y + 18),
      Offset(led.x + 60, resistor.y + 18),
      Offset(resistor.x + 60, resistor.y + 18),
      Offset(resistor.x + 60, mcu.y + 18),
      Offset(mcu.x, mcu.y + 18),
    ];

    for (int i = 0; i < points.length - 1; i++) {
      final start = points[i];
      final end = points[i + 1];
      final mid = Offset((start.dx + end.dx) / 2, start.dy);
      final path = Path()
        ..moveTo(start.dx, start.dy)
        ..quadraticBezierTo(mid.dx, mid.dy, end.dx, end.dy);
      canvas.drawPath(path, paint);
    }

    final signal = Paint()
      ..color = const Color(0xFF10B981)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final signalPath = Path()
      ..moveTo(100, 140)
      ..lineTo(220, 140)
      ..lineTo(220, 250)
      ..lineTo(340, 250);
    canvas.drawPath(signalPath, signal);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class CircuitNode {
  const CircuitNode({
    required this.id,
    required this.x,
    required this.y,
    required this.label,
  });

  final String id;
  final double x;
  final double y;
  final String label;
}
















































































































































































a
