import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   toolbarHeight: 50,
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   leading: Row(
          //     children: [
          //       Padding(
          //           padding: EdgeInsets.only(
          //             left: 20,
          //           ),
          //           child: Container(
          //             height: 20,
          //             width: 20,
          //             margin: EdgeInsets.all(10),
          //             child: Image.asset(
          //               'assets/images/circle_avatar.png',
          //               fit: BoxFit.cover,
          //             ),
          //           )),
          //       Padding(
          //           padding: EdgeInsets.only(left: 10, right: 5),
          //           child: Text(
          //             'Welcome, Mel',
          //             style: TextStyle(
          //               color: Colors.black,
          //             ),
          //           )),
          //     ],
          //   ),
          //   actions: [
          //     IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.notifications_none_rounded,
          //           color: Colors.black,
          //         ))
          //   ],
          // ),
          body: SingleChildScrollView(
            child: Container(
                height: Get.height,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      margin: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: Image.asset(
                                        'assets/images/circle_avatar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Welcome, Mel',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        )),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      color: Colors.black,
                                    ))
                              ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          bottom: 5,
                        ),
                        width: Get.width * .95,
                        child: TextFormField(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search here',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.00),
                                borderSide: BorderSide(color: Colors.grey)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.00),
                                borderSide: BorderSide(color: Colors.grey)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            contentPadding: EdgeInsets.only(
                                left: 10, top: 14.00, bottom: 14.00),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              height: 360,
                              width: Get.width * .95,
                              child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: double.infinity,
                                    disableCenter: true,
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    enableInfiniteScroll: true,
                                  ),
                                  items: controller.imgList
                                      .map((item) => ClipRRect(
                                            child: Container(
                                              child: Image.asset(
                                                item,
                                                fit: BoxFit.cover,
                                                height: double.infinity,
                                                width: double.infinity,
                                              ),
                                            ),
                                          ))
                                      .toList())),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text(
                          'Popular Disposal',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                          child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildListCategories(
                            'Rectangle_104.png',
                            Color.fromARGB(255, 229, 201, 251),
                            'Plastic Waste',
                          ),
                          buildListCategories(
                              'Rectangle_105.png',
                              Color.fromARGB(255, 187, 255, 248),
                              'Organic Waste'),
                          buildListCategories(
                              'Rectangle_104.png',
                              Color.fromARGB(255, 238, 250, 148),
                              'Biodegradables'),
                          buildListCategories('leave.png',
                              Color.fromARGB(255, 118, 5, 5), 'Agriculturals '),
                        ],
                      ))
                    ])),
          )),
    );
  }

  buildListCategories(String imgTitle, Color color, String title) {
    return Container(
      width: 136,
      height: 120,
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color),
            width: 136,
            height: 120,
            child: Center(
                child: Image.asset('assets/images/${imgTitle}',
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        )
      ]),
    );
  }
}
