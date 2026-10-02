class ArduinoProject {
  const ArduinoProject({
    required this.name,
    required this.description,
    required this.sketch,
    required this.componentIds,
  });

  final String name;
  final String description;
  final String sketch;
  final List<String> componentIds;

  ArduinoProject copyWith({
    String? name,
    String? description,
    String? sketch,
    List<String>? componentIds,
  }) {
    return ArduinoProject(
      name: name ?? this.name,
      description: description ?? this.description,
      sketch: sketch ?? this.sketch,
      componentIds: componentIds ?? this.componentIds,
    );
  }
}

class ProjectStore {
  const ProjectStore({
    required this.projects,
  });

  final List<ArduinoProject> projects;
}

const sampleProject = ArduinoProject(
  name: 'Traffic Light System',
  description: 'LED-based traffic signal prototype with Arduino logic.',
  sketch: '''
void setup() {
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);
}

void loop() {
  digitalWrite(13, HIGH);
  delay(1000);
  digitalWrite(13, LOW);
  digitalWrite(12, HIGH);
  delay(1000);
  digitalWrite(12, LOW);
  digitalWrite(11, HIGH);
  delay(1000);
  digitalWrite(11, LOW);
}
''',
  componentIds: ['battery', 'led', 'resistor', 'pushbutton'],
);
