import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'screens/circuit_workspace_screen.dart';
import 'screens/code_editor_screen.dart';
import 'screens/home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    HomeScreen(),
    CircuitWorkspaceScreen(),
    CodeEditorScreen(),
  ];

  static const List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(MdiIcons.electricSwitchClosed),
      label: 'Circuit',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.code_rounded),
      label: 'Code',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: _items
            .map(
              (item) => NavigationDestination(
                icon: item.icon,
                label: item.label ?? '',
              ),
            )
            .toList(),
      ),
    );
  }
}
