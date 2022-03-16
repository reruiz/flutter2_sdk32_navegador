// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter2_sdk32_navegador/src/theme/app_theme.dart';
import 'floats_buttons/animated_floating_buttons.dart';

class FloatsButtonsWidget extends StatefulWidget {
  final int active;
  final Function() onPressed_1;
  final Function() onPressed_2;
  final Function() onPressed_3;
  final Function() onPressed_4;

  FloatsButtonsWidget({
    Key? key,
    required this.active,
    required this.onPressed_1,
    required this.onPressed_2,
    required this.onPressed_3,
    required this.onPressed_4,
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
      colorStartAnimation: AppTheme.accent,
      colorEndAnimation: AppTheme.accent,
      animatedIconData: AnimatedIcons.menu_close,
      spaceBetween: -5.0,
    );
  }

  Widget page1() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          widget.onPressed_1();
          key.currentState?.closeFABs();
        },
        heroTag: "Image",
        tooltip: 'Add',
        child: Text("1", style: TextStyle(fontSize: 20)),
        backgroundColor:
            widget.active == 0 ? Colors.red : Colors.green.shade400,
      ),
    );
  }

  Widget page2() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          widget.onPressed_2();
          key.currentState?.closeFABs();
        },
        heroTag: "Image",
        tooltip: 'Image',
        child: Text("2", style: TextStyle(fontSize: 20)),
        backgroundColor:
            widget.active == 1 ? Colors.red : Colors.green.shade400,
      ),
    );
  }

  Widget page3() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          widget.onPressed_3();
          key.currentState?.closeFABs();
        },
        heroTag: "Inbox",
        tooltip: 'Inbox',
        child: Text("3", style: TextStyle(fontSize: 20)),
        backgroundColor:
            widget.active == 2 ? Colors.red : Colors.green.shade400,
      ),
    );
  }

  Widget settingsPages() {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          widget.onPressed_4();
          key.currentState?.closeFABs();
        },
        heroTag: "Inbox",
        tooltip: 'Inbox',
        child: Icon(Icons.settings),
        backgroundColor:
            widget.active == 3 ? Colors.red : Colors.green.shade400,
      ),
    );
  }
}
