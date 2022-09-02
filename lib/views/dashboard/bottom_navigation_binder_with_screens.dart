import 'package:flutter/material.dart';

import 'dashboard.dart';

class BottomNavigationBinderWithScreens extends StatelessWidget {
  final Widget appBarCenterWidget, appBarEndingWidget;
  const BottomNavigationBinderWithScreens({
    Key? key,
    this.appBarCenterWidget = const SizedBox.shrink(),
    this.appBarEndingWidget = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            top: 10.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Dashboard.of(context)?.toggleDrawer(),
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                  appBarCenterWidget,
                  appBarEndingWidget,
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 20.0,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Icon(Icons.menu),
              Icon(Icons.menu),
              Icon(Icons.menu),
            ],
          ),
        ),
      ),
    );
  }
}
