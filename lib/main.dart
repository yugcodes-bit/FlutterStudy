import 'package:flutter/material.dart';
import 'package:flutter_widgets_masterclass/visual_widgets/visual_widgets.dart';
import 'text_widgets/text_widget.dart';
import 'box_widgets/box_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Masterclass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BoxWidgetsDemo(),
    );
  }
}