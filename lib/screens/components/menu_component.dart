import 'package:flutter/material.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class MenuComponent extends StatefulWidget {
  const MenuComponent({super.key});

  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: const Text('Menu'),
      ),
    );
  }
}
