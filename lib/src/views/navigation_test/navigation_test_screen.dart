import 'package:curie/src/templates/widgets/appbar_template.dart';
import 'package:flutter/material.dart';

class NavigationTestScreen extends StatefulWidget {
  const NavigationTestScreen({Key? key}) : super(key: key);

  static const routeName = '/test';

  @override
  State<NavigationTestScreen> createState() => _NavigationTestScreenState();
}

class _NavigationTestScreenState extends State<NavigationTestScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: appBarTemplate(
        context: context,
        title: 'Title',
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.green,
        child: Center(child: Text('This is a side panel')),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Filters',
        onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
        child: const Icon(Icons.filter_alt),
      ),
      body: Row(
        children: [
          NavigationRail(
            useIndicator: false,
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.secondary),
            selectedLabelTextStyle:
                TextStyle(color: Theme.of(context).colorScheme.secondary),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
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
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: const [
                FirstWidget(),
                SecondWidget(),
                ThirdWidget(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the first Widget',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the second Widget',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the third Widget',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}