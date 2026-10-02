class ElectronicComponent {
  const ElectronicComponent({
    required this.name,
    required this.category,
    required this.description,
    required this.icon,
  });

  final String name;
  final String category;
  final String description;
  final String icon;
}

const sampleComponents = [
  ElectronicComponent(
    name: 'Battery',
    category: 'Source',
    description: 'Power source for prototypes',
    icon: '🔋',
  ),
  ElectronicComponent(
    name: 'Resistor',
    category: 'Linear',
    description: 'Limits current in a circuit',
    icon: '🧩',
  ),
  ElectronicComponent(
    name: 'LED',
    category: 'Diode',
    description: 'Light emitting diode',
    icon: '💡',
  ),
  ElectronicComponent(
    name: 'NPN Transistor',
    category: 'Transistor',
    description: 'Amplifies or switches signals',
    icon: '📡',
  ),
  ElectronicComponent(
    name: 'Push Button',
    category: 'Switch',
    description: 'Momentary input switch',
    icon: '🔘',
  ),
  ElectronicComponent(
    name: 'Op-Amp',
    category: 'Integrated Circuit',
    description: 'Signal conditioning block',
    icon: '⚙️',
  ),
  ElectronicComponent(
    name: 'Capacitor',
    category: 'Linear',
    description: 'Stores charge and filters signals',
    icon: '🧱',
  ),
  ElectronicComponent(
    name: 'MOSFET',
    category: 'Transistor',
    description: 'Power switching device',
    icon: '🔌',
  ),
  ElectronicComponent(
    name: 'Ground',
    category: 'Source',
    description: 'Reference return path',
    icon: '⏚',
  ),
  ElectronicComponent(
    name: '555 Timer',
    category: 'Integrated Circuit',
    description: 'Timing and pulse generation',
    icon: '⏱️',
  ),
];
