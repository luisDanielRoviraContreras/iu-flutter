import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

const morado = const Color(0xff783fff);
const gray = const Color(0xfff6f8fb);

class ListItem extends StatefulWidget {
  int avatar;

  ListItem({Key key, this.avatar}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  final String avatar = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: morado,
      child: Stack(
        children: [
          Slidable(
            actionPane: SlidableBehindActionPane(),
            actionExtentRatio: 0.18,
            actions: <Widget>[
              IconSlideAction(
                caption: 'Enviar',
                color: morado,
                icon: Icons.monetization_on,
                onTap: () => () {},
              ),
              IconSlideAction(
                caption: 'Recibir',
                color: morado,
                icon: Icons.call_received,
                onTap: () => () {},
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Delete',
                color: gray,
                foregroundColor: Colors.red,
                icon: Icons.delete,
                onTap: () => () {},
              ),
              IconSlideAction(
                caption: 'More',
                color: gray,
                icon: Icons.more_horiz,
                onTap: () => () {},
              ),
            ],
            key: Key(widget.avatar.toString()),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 11.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  'https://randomuser.me/api/portraits/women/${widget.avatar}.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(29.0)),
                          ),
                        ),
                        Positioned(
                          right: 5.0,
                          top: 2.0,
                          child: Container(
                            width: 14.0,
                            height: 14.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red[600],
                              border: Border.all(
                                color: Colors.white,
                                width:
                                    2, //                   <--- border width here
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Erick Pereira',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Soy un texto de ejemplo de mensaje...',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Ayer'),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.0, vertical: 3.0),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[600],
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
