import 'package:flutter/material.dart';
import 'package:tugas_majoo_chapter_2/landscape_view.dart';
import 'package:tugas_majoo_chapter_2/potrait_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SlicingCovidApp(),
    );
  }
}

class SlicingCovidApp extends StatelessWidget {
  const SlicingCovidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 480) {
          return LandscapeView();
        } else {
          return PotraitView();
        }
      },
    ));
  }
}
