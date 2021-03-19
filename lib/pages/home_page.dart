import 'package:flutter/material.dart';
import 'package:iu/widgets/footer_bar.dart';
import 'package:iu/widgets/header_tabs.dart';

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
            MyStatelessWidget(),
            FooterBar(),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _selectedIndex,
        //   onTap: (index) => setState(() {
        //     _tabActive = true;
        //     controller
        //         .animateToPage(
        //           index,
        //           duration: const Duration(milliseconds: 300),
        //           curve: Curves.easeInOut,
        //         )
        //         .then((value) => setState(() => _tabActive = false));
        //     _selectedIndex = index;
        //   }),
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Store',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.business),
        //       label: 'Chat',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //       label: 'Wallet',
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget MyStatelessWidget() {
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
        Container(child: HeaderTabs()),
        Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}
