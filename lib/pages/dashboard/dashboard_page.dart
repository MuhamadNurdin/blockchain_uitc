import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhamadnurdin_stockbit/pages/account_home/account_home_page.dart';
import 'package:muhamadnurdin_stockbit/pages/pairings/pairings_page.dart';
import 'package:muhamadnurdin_stockbit/pages/scan_barcode/scan_barcode_page.dart';
import 'package:muhamadnurdin_stockbit/pages/settings/settings_page.dart';

import '../session_home/session_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: const [
                  AccountHomePage(),
                  SessionPage(),
                  ScanBarcodePage(),
                  PairingsPage(),
                  SettingsPage(),
                ],
              ),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Colors.green,
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme.of(context).textTheme.copyWith(
                      caption: const TextStyle(
                          color: Colors
                              .yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: BottomNavigationBar(
                unselectedIconTheme: const IconThemeData(
                    color: Color.fromRGBO(121, 40, 202, 30)),
                selectedItemColor: const Color.fromRGBO(121, 40, 202, 30),
                onTap: controller.changeTabIndex,
                currentIndex: controller.tabIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black87,
                elevation: 0,
                items: [
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.list_bullet,
                    label: 'Accounts',
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.repeat,
                    label: 'Sessions',
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.barcode_viewfinder,
                    label: 'Barcode',
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.link,
                    label: 'Pairings',
                  ),
                  _bottomNavigationBarItem(
                    icon: CupertinoIcons.settings,
                    label: 'Settings',
                  ),
                ],
              ),
            ));
      },
    );
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      backgroundColor: const Color.fromRGBO(121, 40, 202, 30),
    );
  }
}
