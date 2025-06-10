import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  String pageName;
  TempPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(pageName),),
    );
  }
}

    
    