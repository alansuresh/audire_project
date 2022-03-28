import 'package:audire_application_1/drawer_item.dart';

import 'package:audire_application_1/presentation/pages/sign.dart';

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerwidget(),
              DrawerItem(
                  name: 'sign language',
                  icon: Icons.language,
                  onPressed: () => onItemPressed(context, index: 0)),
              DrawerItem(
                  name: 'feedback',
                  icon: Icons.feedback,
                  onPressed: () => onItemPressed(context, index: 1)),
              DrawerItem(
                  name: 'privacy',
                  icon: Icons.privacy_tip,
                  onPressed: () => onItemPressed(context, index: 2)),
              DrawerItem(
                  name: 'log out',
                  icon: Icons.logout,
                  onPressed: () => onItemPressed(context, index: 3))
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const sign()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  headerwidget() {
    const CircleAvatar(radius: 40);
  }
}
