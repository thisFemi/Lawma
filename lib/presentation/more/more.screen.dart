import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lawma/presentation/more/grid_view_widget.dart';

import 'controllers/more.controller.dart';

class MoreScreen extends GetView<MoreController> {
  MoreController controller = Get.put(MoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'More Options',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          elevation: 0,
          leading: Text(''),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          height: Get.height,
          width: Get.width,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 4.2,
                mainAxisSpacing: 20),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              GridViewItem('awards.png', 'Your Loyalty Points'),
              GridViewItem('hand_calendar.png', 'Pick Up Dates'),
              GridViewItem('red_locator.png', 'Nearest Drop Off'),
              GridViewItem('login_background.png', 'Request a Pick Up'),
              GridViewItem('trash_canns.png', 'Purchase a Can'),
              GridViewItem('complaint.png', 'Complaints')
            ],
          ),
        ));
  }
}
