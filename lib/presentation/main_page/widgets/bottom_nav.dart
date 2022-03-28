import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNaviagtionWidget extends StatelessWidget {
  const BottomNaviagtionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.hearing), label: 'Audire'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_label), label: 'Videos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_drop_down_circle_rounded),
                  label: 'downloads'),
            ],
          );
          ;
        });
  }
}
