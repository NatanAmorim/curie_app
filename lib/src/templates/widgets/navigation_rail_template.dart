import 'package:flutter/material.dart';

class NavigationRailTemplate extends StatefulWidget {
  const NavigationRailTemplate({Key? key}) : super(key: key);

  @override
  State<NavigationRailTemplate> createState() => _NavigationRailTemplateState();
}

class _NavigationRailTemplateState extends State<NavigationRailTemplate> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return NavigationRail(
      useIndicator: false,
      selectedIconTheme:
          IconThemeData(color: Theme.of(context).colorScheme.secondary),
      selectedLabelTextStyle:
          TextStyle(color: Theme.of(context).colorScheme.secondary),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.all,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.favorite_border),
          selectedIcon: Icon(Icons.favorite),
          label: Text('First'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Second'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.star_border),
          selectedIcon: Icon(Icons.star),
          label: Text('Third'),
        ),
      ],
    );
  }
}
