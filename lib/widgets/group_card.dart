import 'package:flutter/material.dart';

class GroupCard extends StatefulWidget {
  GroupCard({Key key}) : super(key: key);

  @override
  _GroupCardState createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        height: 200.0,
        color: Colors.amberAccent,
        child: Text('Group'),
      ),
    );
  }
}
