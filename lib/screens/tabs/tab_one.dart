import 'package:flutter/material.dart';

class TabOneScreen extends StatefulWidget {
  @override
  _TabOneScreenState createState() => _TabOneScreenState();
}

class _TabOneScreenState extends State<TabOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Tab One")),
    );
  }
}
