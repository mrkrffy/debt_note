import 'package:debt_note/application/common/constants/radius.dart';
import 'package:debt_note/application/common/constants/spacing.dart';
import 'package:flutter/material.dart';

class DNBottomNavigationBarItem {
  const DNBottomNavigationBarItem({
    required this.icon,
    this.label,
  });

  final Widget icon;
  final String? label;
}

class DNBottomNavigationBarAction {
  DNBottomNavigationBarAction({
    required this.icon,
    this.label,
    this.onTap,
  });

  final Widget icon;
  final String? label;
  final VoidCallback? onTap;
}

class DNBottomNavigationBar extends StatelessWidget {
  const DNBottomNavigationBar({
    super.key,
    this.items = const [],
    this.action,
    this.activeIndex = 0,
    this.onTap,
  }) : assert(items.length > 0);

  final List<DNBottomNavigationBarItem> items;
  final DNBottomNavigationBarAction? action;
  final int activeIndex;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(DNSpacings.lg),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(DNRadius.round),
      ),
    );
  }
}
