import 'package:flutter/material.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class ChatComponent extends StatefulWidget {
  const ChatComponent({super.key});

  @override
  State<ChatComponent> createState() => _ChatComponentState();
}

class _ChatComponentState extends State<ChatComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: const Text('Chats'),
      ),
    );
  }
}
