import 'package:auto_route/auto_route.dart';
import 'package:debt_note/application/generated/l10n.dart';
import 'package:debt_note/core/presentation/widgets/dn_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
      routes: const [],
      builder: (context, children, tabsRouter) {
        final selectedIndex = tabsRouter.activeIndex;
        final child = children[selectedIndex];

        return Scaffold(
          body: Stack(children: [
            child,
            DNBottomNavigationBar(
              items: [
                DNBottomNavigationBarItem(
                  icon: const Icon(Icons.list_alt),
                  label: I18n.current.coreBottomNavigationBarItem1,
                ),
                DNBottomNavigationBarItem(
                  icon: const Icon(Icons.list_alt),
                  label: I18n.current.coreBottomNavigationBarItem1,
                ),
                DNBottomNavigationBarItem(
                  icon: const Icon(Icons.list_alt),
                  label: I18n.current.coreBottomNavigationBarItem1,
                )
              ],
              onTap: (index) => tabsRouter.setActiveIndex(index),
              action: DNBottomNavigationBarAction(
                icon: const Icon(Icons.add),
                onTap: () {},
              ),
            ),
          ]),
        );
      },
    );
  }
}
