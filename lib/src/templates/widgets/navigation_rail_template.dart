import 'package:flutter/material.dart';

class NavigationRailTemplate extends StatefulWidget {
  const NavigationRailTemplate({Key? key}) : super(key: key);

  @override
  State<NavigationRailTemplate> createState() => _NavigationRailTemplateState();
}

class _NavigationRailTemplateState extends State<NavigationRailTemplate> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return NavigationRail(
      useIndicator: false,
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.all,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          padding: EdgeInsets.only(top: 12),
          icon: Icon(Icons.favorite_border),
          selectedIcon: Icon(Icons.favorite),
          label: Text('First'),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.only(top: 12),
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Second'),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.only(top: 12),
          icon: Icon(Icons.star_border),
          selectedIcon: Icon(Icons.star),
          label: Text('Third'),
        ),
      ],
    );
  }
}
