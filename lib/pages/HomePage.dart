import 'package:flutter/material.dart';
import 'package:your_app/components/Home.dart';
import 'package:your_app/components/Contato.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            HomeWidget(),
            ContatoWidget(),
          ],
        ),
      ),
    );
  }
}
