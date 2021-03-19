import 'package:flutter/material.dart';

import 'package:iu/pages/chat_page.dart';
import 'package:iu/pages/home_page.dart';
import 'package:iu/pages/animated_container.dart';
import 'package:iu/pages/input_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (BuildContext context) => HomePage(),
    'chat': (BuildContext context) => ChatPage(),
    'animated': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),
  };
}
