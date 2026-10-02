enum ElectronicPartCategory {
  source,
  linear,
  diode,
  transistor,
  switchPart,
  integratedCircuit,
}

class ElectronicComponent {
  const ElectronicComponent({
    required this.id,
    required this.name,
    required this.category,
    required this.symbol,
    required this.description,
  });

  final String id;
  final String name;
  final ElectronicPartCategory category;
  final String symbol;
  final String description;

  String get categoryLabel {
    switch (category) {
      case ElectronicPartCategory.source:
        return 'Source';
      case ElectronicPartCategory.linear:
        return 'Linear';
      case ElectronicPartCategory.diode:
        return 'Diode';
      case ElectronicPartCategory.transistor:
        return 'Transistor';
      case ElectronicPartCategory.switchPart:
        return 'Switch';
      case ElectronicPartCategory.integratedCircuit:
        return 'Integrated Circuit';
    }
  }
}
