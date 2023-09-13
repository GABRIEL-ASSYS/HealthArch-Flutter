import 'package:flutter/material.dart';
import 'package:your_app/components/Sobre.dart';

class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        child: Center(
          child: SobreWidget(),
        ),
      ),
    );
  }
}
