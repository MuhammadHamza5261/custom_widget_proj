import 'package:custom_widgets_proj/ui_screens/no_internet_dialog_ui.dart';
import 'package:custom_widgets_proj/ui_screens/text_field_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoInternetScreen(),
    );
  }
}


