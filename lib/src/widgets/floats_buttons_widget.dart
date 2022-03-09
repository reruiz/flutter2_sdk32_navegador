// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

import 'floats_buttons/animated_floating_buttons.dart';

class FloatsButtonsWidget extends StatefulWidget {
  FloatsButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  _FloatsButtonsWidgetState createState() => _FloatsButtonsWidgetState();
}

class _FloatsButtonsWidgetState extends State<FloatsButtonsWidget> {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();

  //Constructor
  @override
  Widget build(BuildContext context) {
    return AnimatedFloatingActionButton(
      key: key,
      fabButtons: <Widget>[page1(), page2(), page3(), settingsPages()],
      colorStartAnimation: Colors.green,
      colorEndAnimation: Colors.red,
      animatedIconData: AnimatedIcons.menu_close,
      spaceBetween: -5.0,
    );
  }

  Widget page1() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          key.currentState?.closeFABs();
        },
        heroTag: "Image",
        tooltip: 'Add',
        child: Text("1", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget page2() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "Image",
        tooltip: 'Image',
        child: Text("2", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget page3() {
    return Container(
      child: FloatingActionButton(
          onPressed: null,
          heroTag: "Inbox",
          tooltip: 'Inbox',
          child: Text("3", style: TextStyle(fontSize: 20)),
          backgroundColor: Colors.green),
    );
  }

  Widget settingsPages() {
    return Container(
      child: FloatingActionButton(
          onPressed: null,
          heroTag: "Inbox",
          tooltip: 'Inbox',
          child: Icon(Icons.settings),
          backgroundColor: Colors.green),
    );
  }
}
