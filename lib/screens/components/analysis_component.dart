import 'package:flutter/material.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class AnalysisComponent extends StatefulWidget {
  const AnalysisComponent({super.key});

  @override
  State<AnalysisComponent> createState() => _AnalysisComponentState();
}

class _AnalysisComponentState extends State<AnalysisComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: const Text('Analysis'),
      ),
    );
  }
}
