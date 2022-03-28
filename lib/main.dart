import 'package:audire_application_1/core/colors/colors.dart';
import 'package:audire_application_1/presentation/home/screen_home.dart';
import 'package:audire_application_1/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "audire",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: backgroundcolor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: ScreenMainPage(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: ScreenHome(),
        appBar: AppBar(
          title: const Text('navigation bar'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.open_in_new,
                  color: Colors.white,
                ),
                label: const Text(
                  'open',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ));
  }
}
