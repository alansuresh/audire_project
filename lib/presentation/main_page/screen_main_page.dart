// ignore_for_file: prefer_const_constructors

import 'package:audire_application_1/core/colors/colors.dart';

import 'package:audire_application_1/main.dart';
import 'package:audire_application_1/presentation/audire/screen_audire.dart';
import 'package:audire_application_1/presentation/downloads/screen_downloads.dart';
import 'package:audire_application_1/presentation/home/screen_home.dart';
import 'package:audire_application_1/presentation/Video/screen_videos.dart';
import 'package:audire_application_1/presentation/main_page/widgets/bottom_nav.dart';

import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(),
    Home(),
    Screenaudire(),
    screenvideos(),
    Screendownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNaviagtionWidget(),
    );
  }
}
