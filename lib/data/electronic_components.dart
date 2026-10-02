import '../models/electronic_component.dart';

const sampleComponents = <ElectronicComponent>[
  ElectronicComponent(
    id: 'battery',
    name: 'Battery',
    category: ElectronicPartCategory.source,
    symbol: '🔋',
    description: 'Power source for electronics prototypes.',
  ),
  ElectronicComponent(
    id: 'resistor',
    name: 'Resistor',
    category: ElectronicPartCategory.linear,
    symbol: '🧩',
    description: 'Limits current flow in a circuit.',
  ),
  ElectronicComponent(
    id: 'led',
    name: 'LED',
    category: ElectronicPartCategory.diode,
    symbol: '💡',
    description: 'Signals output or status in a circuit.',
  ),
  ElectronicComponent(
    id: 'npn',
    name: 'NPN Transistor',
    category: ElectronicPartCategory.transistor,
    symbol: '📡',
    description: 'Switches or amplifies current flow.',
  ),
  ElectronicComponent(
    id: 'pushbutton',
    name: 'Push Button',
    category: ElectronicPartCategory.switchPart,
    symbol: '🔘',
    description: 'Momentary user input switch.',
  ),
  ElectronicComponent(
    id: 'opamp',
    name: 'Op-Amp',
    category: ElectronicPartCategory.integratedCircuit,
    symbol: '⚙️',
    description: 'Amplifies and conditions signals.',
  ),
  ElectronicComponent(
    id: 'capacitor',
    name: 'Capacitor',
    category: ElectronicPartCategory.linear,
    symbol: '🧱',
    description: 'Stores charge and smooths signals.',
  ),
  ElectronicComponent(
    id: 'mosfet',
    name: 'MOSFET',
    category: ElectronicPartCategory.transistor,
    symbol: '🔌',
    description: 'High-efficiency electronic switch.',
  ),
  ElectronicComponent(
    id: 'ground',
    name: 'Ground',
    category: ElectronicPartCategory.source,
    symbol: '⏚',
    description: 'Reference return for the circuit.',
  ),
  ElectronicComponent(
    id: 'timer555',
    name: '555 Timer',
    category: ElectronicPartCategory.integratedCircuit,
    symbol: '⏱️',
    description: 'Timing oscillator and pulse generator.',
  ),
];
