import 'package:flutter/material.dart';

import 'package:iu/widgets/list_item.dart';

class ChatContacts extends StatefulWidget {
  ChatContacts({Key key}) : super(key: key);

  @override
  _ChatContactsState createState() => _ChatContactsState();
}

class _ChatContactsState extends State<ChatContacts> {
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
      items.add(ListItem(
        avatar: i,
      ));
    }

    return ListView(
      children: items,
      padding: EdgeInsets.only(bottom: 80.0, top: 10.0),
    );
  }
}
