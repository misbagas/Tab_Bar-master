import 'package:flutter/material.dart';
import 'package:tab_nav_bar/screens/tabs/tab_five.dart';
import 'package:tab_nav_bar/screens/tabs/tab_four.dart';
import 'package:tab_nav_bar/screens/tabs/tab_one.dart';
import 'package:tab_nav_bar/screens/tabs/tab_three.dart';
import 'package:tab_nav_bar/screens/tabs/tab_two.dart';

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tab Bar",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.redAccent,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            tabs: [
              Tab(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.redAccent)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text("Tab One"),
                          )))),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.redAccent)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text("Tab Two"),
                      )),
                ),
              ),
              Tab(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.redAccent)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Tab Three"),
                        ))),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.redAccent)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text("Tab Four"),
                      )),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.redAccent)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text("Tab Five"),
                      )),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabOneScreen(),
            TabTwoScreen(),
            TabThreeScreen(),
            TabFourScreen(),
            TabFiveScreen(),
          ],
        ),
      ),
    );
  }
}
