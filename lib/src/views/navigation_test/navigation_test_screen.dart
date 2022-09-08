import 'package:curie/src/templates/widgets/appbar_template.dart';
import 'package:flutter/material.dart';

class NavigationTestScreen extends StatefulWidget {
  const NavigationTestScreen({Key? key}) : super(key: key);

  static const routeName = '/test';

  @override
  State<NavigationTestScreen> createState() => _NavigationTestScreenState();
}

class _NavigationTestScreenState extends State<NavigationTestScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  bool isExtended = false;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: appBarTemplate(
        context: context,
        title: 'Title',
        leading: InkWell(
          onTap: () {
            setState(() => isExtended = !isExtended);
            if (isExtended) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
          },
          child: Center(
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              size: 28,
              progress: _animationController,
            ),
          ),
        ),
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.green,
        child: Center(child: Text('This is a side panel')),
      ),
      body: Row(
        children: [
          NavigationRail(
            extended: isExtended,
            useIndicator: true,
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
            labelType: isExtended
                ? NavigationRailLabelType.none
                : NavigationRailLabelType.selected,
            leading: isExtended
                ? FloatingActionButton.extended(
                    tooltip: 'Filters',
                    onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                    icon: const Icon(Icons.filter_alt),
                    label: const Text('Filters'),
                  )
                : FloatingActionButton(
                    tooltip: 'Filters',
                    onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                    child: const Icon(Icons.filter_alt),
                  ),
            destinations: [
              NavigationRailDestination(
                padding: EdgeInsets.only(top: isExtended ? 0 : 12),
                icon: const Icon(Icons.favorite_border),
                selectedIcon: const Icon(Icons.favorite),
                label: const Text('First'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(top: isExtended ? 0 : 12),
                icon: const Icon(Icons.bookmark_border),
                selectedIcon: const Icon(Icons.book),
                label: const Text('Second'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(top: isExtended ? 0 : 12),
                icon: const Icon(Icons.star_border),
                selectedIcon: const Icon(Icons.star),
                label: const Text('Third'),
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
