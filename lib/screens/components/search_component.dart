import 'package:flutter/material.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({super.key});

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: const Text('Search'),
      ),
    );
  }
}
