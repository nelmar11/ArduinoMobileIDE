import 'package:flutter/material.dart';

import '../models/project_state.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key, required this.project});

  final ArduinoProject project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(project.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.description,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F172A),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: SelectableText(
                  project.sketch,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.7,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Used Components',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: project.componentIds
                    .map(
                      (componentId) => Chip(
                        label: Text(componentId),
                        backgroundColor: Colors.blue.shade50,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

