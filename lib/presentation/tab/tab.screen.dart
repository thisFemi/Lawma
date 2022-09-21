import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:lawma/presentation/screens.dart';

import 'controllers/tab.controller.dart';

class TabScreen extends GetView<TabsController> {
  @override
  final TabsController controller = Get.put(TabsController());
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, controller) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 20,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.green,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on_outlined,
                  ),
                  label: 'Location'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.delete_outline), label: 'Dispose Menu'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'More'),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 195, 247, 198),
          ),
          bottomNavigationBar: buildBottomNavigationMenu(context, controller),
          body: Obx(() => IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    HomeScreen(),
                    LocationScreen(),
                    DisposeMenuScreen(),
                    MoreScreen()
                  ]))),
    );
  }
}
