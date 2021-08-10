import 'dart:ui';

import 'package:discover/src/ui/pages/Home/Components/MiddPost.dart';
import 'package:discover/src/ui/pages/Home/Components/MostWached.dart';
import 'package:discover/src/ui/pages/Home/Components/UsersHistory.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme:IconThemeData(color: Colors.purple[700]),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.open_in_browser, ), label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark,), label: 'Bookmark'),
        ]),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(' Discover',
                        style: Theme.of(context).textTheme.headline4),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          size: 32,
                          color: Colors.grey[500],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                UsersHistory(),
                MiddPost(size: size),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  child: Text(
                    'Most Watched',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.left,
                  ),
                ),
                MostWached(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}