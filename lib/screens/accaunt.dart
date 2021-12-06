import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/componets/icons.dart';

class AccontPage extends StatefulWidget {
  const AccontPage({Key? key}) : super(key: key);

  @override
  State<AccontPage> createState() => _AccontPageState();
}

class _AccontPageState extends State<AccontPage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160.0,
              width: double.infinity,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.indigo,
                            backgroundImage: AssetImage(
                              "assets/images/jaxa.jpg",
                            ),
                          ),
                          Text(
                            "Jahongir Anvarov",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40.0, left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "24",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Posts",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 25.0),
                            Column(
                              children: const [
                                Text(
                                  "423",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 25.0),
                            Column(
                              children: const [
                                Text(
                                  "263",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 110.0,
              width: double.infinity,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 40.0,
                      ),
                      Text(
                        "mood",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 40.0,
                      ),
                      Text(
                        "( ?? )",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 40.0,
                      ),
                      Text(
                        "Onajon",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text(
                        "New",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: TabBar(
                indicatorColor: Colors.black,
                controller: _tabController,
                tabs: const [
                  Tab(
                    child: Icon(
                      Icons.grid_on_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      CupertinoIcons.play_arrow,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      CupertinoIcons.person_crop_square,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300.0,
              child: TabBarView(
                controller: _tabController,
                children: [
                  GridView.builder(
                    itemCount: 24,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 200.0,
                        width: 200.0,
                        child: Image.network(
                          "https://source.unsplash.com/random",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 200.0,
                        width: 200.0,
                        color: Colors.purple[(Random().nextInt(8) + 1) * 100],
                      );
                    },
                  ),
                  GridView.builder(
                    itemCount: 1,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 200.0,
                        width: 200.0,
                        color: Colors.purple[(Random().nextInt(8) + 1) * 100],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.7,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                "jaxaanvarov",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.grey,
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: upload_image,
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
