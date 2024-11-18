import 'package:flutter/material.dart';

import '../custom_widgets/no_internet_dialog.dart';
class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({super.key});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                NoInternetDialog();
              },
              child: Text('Show Lotiee Dialod')
          ),
        ],
      ),
    );
  }
}
