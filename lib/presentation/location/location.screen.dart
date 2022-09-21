import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:get/get.dart';

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // LocationController controller = Get.put(LocationController());
  List<Map<String, dynamic>> allLCDA = [
    {
      "id": 1,
      "name": "Agbado Oke-Odo LCDA",
      "url":
          'https://www.google.com/maps/place/AGBADO+OKE+ODO+LCDA/@6.6557014,3.2924521,17z/data=!3m1!4b1!4m5!3m4!1s0x103b912c6a22aa4f:0x1e687211211ab6c7!8m2!3d6.6556961!4d3.2946408'
    },
    {
      "id": 2,
      "name": "Agbonyi Ketuagbonyi LCDA",
      "url":
          'https://www.google.com/maps/place/Agboyi+Ketu+Local+Council+Development+Area/@6.5869198,3.3986578,17z/data=!3m1!4b1!4m5!3m4!1s0x103b93eda11f5293:0x837cba14819e3bd9!8m2!3d6.5869145!4d3.4008465'
    },
    {
      "id": 3,
      "name": "Agege LCDA",
      "url":
          'https://www.google.com/maps/place/Orile+Agege+Local+Council+Development+Area/@6.626131,3.2885703,15z/data=!3m1!4b1!4m5!3m4!1s0x103b911bd80e46f5:0x79bb41a3af80d6ab!8m2!3d6.6261258!4d3.3054976'
    },
    {
      "id": 4,
      "name": "Ajeromi-Ifelodun LCDA",
    },
    {
      "id": 5,
      "name": "Alimosho LCDA",
    },
    {
      "id": 6,
      "name": "Agbado Oke-Odo LCDA",
    },
    {
      "id": 7,
      "name": "Amuwo-Odofin LGA",
    },
    {
      "id": 8,
      "name": "Apapa LGA",
    },
    {
      "id": 9,
      "name": "Ayobo Ipaja LCDA",
    },
    {
      "id": 10,
      "name": "Badagry LGA",
    },
    {
      "id": 11,
      "name": "Badagry West LCDA",
    },
    {
      "id": 12,
      "name": "Bariga LCDA",
    },
    {
      "id": 13,
      "name": "Coker Aguda LCDA",
    },
    {
      "id": 14,
      "name": "Egbe Idimu LCDA",
    },
    {
      "id": 16,
      "name": "Ejigbo,Lagos LCDA",
    },
    {"id": 17, "name": "Epe LGA"},
    {
      "id": 18,
      "name": "Eredo LCDA",
    },
    {
      "id": 19,
      "name": "Eti-Osa LGA",
    },
    {
      "id": 20,
      "name": "Eti-Osa East LCDA",
    },
    {
      "id": 21,
      "name": "Iba LCDA",
    },
    {
      "id": 22,
      "name": "Ibeju Lekki LGA",
    },
    {
      "id": 23,
      "name": "Ifako-Ijaiye LGA",
    },
    {
      "id": 24,
      "name": "Ifelodun LCDA",
    },
    {"id": 25, "name": "IGANDO IKOTUN LCDA"},
    {"id": 26, "name": "IGBOGBO BAIYEKU LCDA"},
    {"id": 27, "name": "Ijede LCDA"},
    {"id": 28, "name": "Ikeja LGA"},
    {"id": 29, "name": "IGBOGBO BAIYEKU LCDA"},
    {"id": 30, "name": "IKORODU WEST LCDA"},
    {"id": 31, "name": "IKORODU LGA"},
    {"id": 32, "name": "IKORODU NORTH LCDA"}
  ];

  List<Map<String, dynamic>> foundLga = [];
  @override
  initState() {
    foundLga = allLCDA;
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allLCDA;
    } else {
      results = allLCDA
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      foundLga = results;
    });
  }

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Locate Nearest Operator',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SizedBox(),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              width: Get.width * .95,
              child: TextFormField(
                onChanged: (value) => _runFilter(value),
                focusNode: FocusNode(),
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search nearest location',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
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
                  contentPadding:
                      EdgeInsets.only(left: 10, top: 14.00, bottom: 14.00),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foundLga.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(foundLga[index]["id"]),
                  child: ListTile(
                    onTap: () async {
                      var url = foundLga[index]["url"];
                      if (!await launch(url)) {
                        throw 'Could not find Location';
                      }
                    },
                    minLeadingWidth: 10,
                    leading: Icon(
                      Icons.circle,
                      color: Color.fromARGB(201, 255, 154, 2),
                    ),
                    title: Text(
                      foundLga[index]["name"],
                      style: TextStyle(fontSize: 14),
                    ),
                    tileColor: Colors.white,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
