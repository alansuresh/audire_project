import 'dart:ui';

import 'package:audire_application_1/core/colors/colors.dart';
import 'package:audire_application_1/core/constants.dart';
import 'package:audire_application_1/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class Screendownloads extends StatelessWidget {
  const Screendownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appbarwidget(
            tittle: "Audire",
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: const [
                kwidth,
                Icon(
                  Icons.settings,
                  color: kwhitecolor,
                ),
                SizedBox(
                  height: 100,
                ),
                Text("Smart Downloads")
              ],
            ),
            Column(
              children: [
                SizedBox(height: 200),
                Text(
                  "Downloaded videos can be viewed without internet",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 200),
                MaterialButton(
                  color: KButtenColorWhite,
                  onPressed: () {},
                  child: Text(
                    "See what you can dowload",
                    style: TextStyle(
                        color: KBlackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
