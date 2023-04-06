import 'package:curie/src/templates/widgets/Fade_indexed_stack_template.dart';
import 'package:curie/src/templates/widgets/appbar_template.dart';
import 'package:curie/src/views/navigation_test/first_widget.dart';
import 'package:curie/src/views/navigation_test/second_widget.dart';
import 'package:curie/src/views/navigation_test/third_widget.dart';
import 'package:flutter/material.dart';

class NavigationTestView extends StatefulWidget {
  const NavigationTestView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<NavigationTestView> createState() => _NavigationTestViewState();
}

class _NavigationTestViewState extends State<NavigationTestView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  bool isExtended = false;
  late AnimationController _animatedIconAnimationController;

  @override
  void initState() {
    _animatedIconAnimationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animatedIconAnimationController.dispose();
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
        leading: IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            size: 28,
            progress: _animatedIconAnimationController,
          ),
          onPressed: () {
            setState(() => isExtended = !isExtended);
            if (isExtended) {
              _animatedIconAnimationController.forward();
            } else {
              _animatedIconAnimationController.reverse();
            }
          },
        ),
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.green,
        child: Center(child: Text('This is a side panel')),
      ),
      body: Row(
        children: [
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 58,
              ),
              child: IntrinsicHeight(
                child: NavigationRail(
                  extended: isExtended,
                  useIndicator: true,
                  selectedIconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.secondary),
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
                          onPressed: () =>
                              _scaffoldKey.currentState!.openEndDrawer(),
                          icon: const Icon(Icons.filter_alt),
                          label: const Text('Filters'),
                        )
                      : FloatingActionButton(
                          tooltip: 'Filters',
                          onPressed: () =>
                              _scaffoldKey.currentState!.openEndDrawer(),
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
              ),
            ),
          ),
          // This is the main content.
          Expanded(
            child: FadeIndexedStackTemplate(
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
