import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iu/pages/home/chat/chat_sms.dart';
import 'package:iu/pages/home/chat/chat_group.dart';
import 'package:iu/pages/home/chat/chat_contacts.dart';
import 'package:iu/pages/home/chat/app_bar.dart';

const gray = const Color(0xfff6f8fb);
const iconColor = const Color(0xff8693a7);

class HomeChat extends StatefulWidget {
  const HomeChat({Key key}) : super(key: key);
  @override
  _HomeChatState createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  String _title = 'Mensajes';

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    tabController.addListener(() {
      log('paso');
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBarWidget(tabController: tabController),
          body: TabBarView(
            controller: tabController,
            children: [
              ChatSms(),
              ChatGroup(),
              ChatContacts(),
            ],
          ),
        ));
  }
}
