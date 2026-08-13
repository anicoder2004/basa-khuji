import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/app_localizations.dart';

class MainScaffold extends ConsumerStatefulWidget {
  final Widget child;

  const MainScaffold({required this.child, super.key});

  @override
  ConsumerState<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends ConsumerState<MainScaffold> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final location = GoRouterState.of(context).uri.toString();

    // Determine current index based on route
    _currentIndex = _getIndexForRoute(location);

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => _onNavTap(index, context),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: l10n.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category_outlined),
            activeIcon: const Icon(Icons.category),
            label: l10n.category,
          ),
          BottomNavigationBarItem(
            icon: const SizedBox.shrink(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.message_outlined),
            activeIcon: const Icon(Icons.message),
            label: l10n.messages,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person),
            label: l10n.account,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/add-property'),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  int _getIndexForRoute(String route) {
    if (route.startsWith('/property') || route == '/') return 0;
    if (route.startsWith('/category')) return 1;
    if (route.startsWith('/add-property')) return 2;
    if (route.startsWith('/messages')) return 3;
    if (route.startsWith('/profile') || route.startsWith('/settings') ||
        route.startsWith('/favorites')) return 4;
    return 0;
  }

  void _onNavTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/category');
        break;
      case 2:
        context.go('/add-property');
        break;
      case 3:
        context.go('/messages');
        break;
      case 4:
        context.go('/profile');
        break;
    }
  }
}