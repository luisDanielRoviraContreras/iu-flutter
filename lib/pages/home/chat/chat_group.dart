import 'package:flutter/material.dart';

import 'package:iu/widgets/group_card.dart';

class ChatGroup extends StatefulWidget {
  ChatGroup({Key key}) : super(key: key);

  @override
  _ChatGroupState createState() => _ChatGroupState();
}

class _ChatGroupState extends State<ChatGroup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: GetListItems(),
    );
  }

  Widget GetListItems() {
    List<Widget> items = [];

    for (var i = 1; i < 30; i++) {
      items.add(
        GroupCard(),
      );
    }

    return Wrap(
      children: items,
    );
  }
}
