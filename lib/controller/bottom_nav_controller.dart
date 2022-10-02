import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nomadz/view/home_exploring_screen.dart';
import 'package:nomadz/view/profile_menu/profile_menu_page.dart';
import 'package:nomadz/view/save_tabs.dart/news_nevigating_tab.dart';
import 'package:nomadz/view/save_tabs.dart/save_llst_screen.dart';
import 'package:nomadz/view/save_tabs.dart/save_tab.dart';

import '../view/save_tabs.dart/save_nav_tabs.dart';

class BottomNavController extends GetxController {
  // @overrides
  //   onInit(){
  //   _topicController.getTopics();
  //   super.onInit();
  // }

  //TopicController _topicController = Get.put(TopicController());

  int currentIndex = 0;
  /* --------------------------------- bottomAppBar --------------------------------- */
  List allPagesScreen = [
    ExploringScreen(),
    SaveTabs(),
    SaveNavScreen(),
    NewsNevigationTab(),
    ProfileMenuPage(),

    // HomeScreen(),

    // CardScreen(),
    // OrderHistoryPage(),
    // AccountsScreen(),

    //  ProfilePage(),

    // OverViewPage(),
    // StoryPage(),activi
    // HacksDetailsPage()

    // AboutPage()
    // OverViewPage()
  ];

  updatePage(index) {
    index = allPagesScreen[currentIndex];
    update();
  }
}
