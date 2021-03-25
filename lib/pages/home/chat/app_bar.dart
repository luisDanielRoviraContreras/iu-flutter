import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

const gray = const Color(0xfff6f8fb);
const iconColor = const Color(0xff8693a7);

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;

  AppBarWidget({Key key, @required this.tabController}) : super(key: key);

  @override
  _AppBarWidgetState createState() => new _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(210.0);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  String _title = 'Mensajes';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: gray,
      elevation: 0.0,
      leadingWidth: 76.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10.0),
        child: SvgPicture.asset(
          'assets/logo.svg',
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 10.0),
          child: Row(
            children: [
              SizedBox(
                height: 28.0,
                width: 28.0,
                child: IconButton(
                  padding: new EdgeInsets.all(0.0),
                  icon: Image(
                      image:
                          AssetImage('assets/todo/Iconly-Light-Setting.png')),
                  onPressed: () {
                    // handle the press
                  },
                ),
              ),
              IconButton(
                icon: Image(
                    image: AssetImage(
                        'assets/todo/Iconly-Light-Notification.png')),
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
        )
      ],
      title: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text(
          _title,
          style: TextStyle(color: Colors.black, fontSize: 22.0),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 140.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 25.0,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              // padding: EdgeInsets.all(18.0),
              margin: EdgeInsets.all(18.0),
              child: Stack(
                children: [
                  TextField(
                      decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.all(20.0),
                    hintText: 'Buscar',
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image(
                          image: AssetImage(
                              'assets/todo/Iconly-Broken-Search.png')),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ))
                ],
              ),
            ),
            TabBar(
                controller: widget.tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black45,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.red, radius: 3),
                tabs: [
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizont//Center Row contents vertically,
                        children: [
                          // Icon(Icons.mail),
                          SvgPicture.asset(
                            'assets/todo/Chat.svg',
                            color: iconColor,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Mensajes"),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: [
                          // Icon(Icons.people),
                          SvgPicture.asset(
                            'assets/todo/Iconly-Light-3 User.svg',
                            color: iconColor,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Grupos"),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,
                        children: [
                          // Icon(Icons.contacts_rounded),
                          SvgPicture.asset(
                            'assets/todo/Iconly-Light-2 User.svg',
                            color: iconColor,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Contactos"),
                        ],
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({Color color, double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    // canvas.drawCircle(circleOffset, 20.0, _paint);
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = cfg.size.width;
    final height = cfg.size.height;

    Path path = Path();
    path.moveTo(offset.dx - 25, height);
    path.quadraticBezierTo(offset.dx, height, offset.dx, height - 25);
    path.quadraticBezierTo(offset.dx, height, offset.dx, 25);
    path.quadraticBezierTo(offset.dx, 0, offset.dx + 25, 0);
    path.quadraticBezierTo(offset.dx + width, 0, offset.dx + width - 25, 0);
    path.quadraticBezierTo(offset.dx + width, 0, offset.dx + width, 25);
    path.quadraticBezierTo(
        offset.dx + width, height, offset.dx + width + 25, height);
    path.close();
    return canvas.drawPath(path, paint);
  }
}
