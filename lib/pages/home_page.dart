import 'package:flutter/material.dart';
import 'package:iu/widgets/footer_bar.dart';
import 'package:iu/pages/home/home_chat.dart';

const gray = const Color(0xfff6f8fb);

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  int _selectedIndex = 0;
  bool _tabActive = false;
  String _search = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            HomePagePages(),
            FooterBar(),
          ],
        ),
      ),
    );
  }

  Widget HomePagePages() {
    return PageView(
      onPageChanged: _tabActive
          ? null
          : (index) => setState(() {
                controller.animateToPage(
                  index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                _selectedIndex = index;
              }),
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Container(
          child: Text('First Page 1'),
          color: gray,
        ),
        Container(child: HomeChat()),
        Container(
          child: Text('Third Page'),
          color: gray,
        )
      ],
    );
  }
}
