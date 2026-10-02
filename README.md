# Arduino Mobile IDE

A cross-platform Arduino development app for Android and web, inspired by ArduinoDroid, Wokwi, and Proto.io.

Features:
- Arduino sketch editor
- Circuit workspace and breadboard planning
- Component library for source, linear, diode, transistor, switch, and integrated circuit parts
- Mobile-first interface with web-friendly responsive layout
- Simulation-ready project structure for future logic and real-time validation

## Tech stack
- Flutter
- Riverpod
- Material 3 UI

## Run locally

```bash
flutter pub get
flutter run
```

## Project structure

- `lib/screens` – app screens
- `lib/widgets` – reusable UI widgets
- `lib/models` – domain data models
- `lib/data` – component catalog and sample project data
- `lib/theme` – design tokens
