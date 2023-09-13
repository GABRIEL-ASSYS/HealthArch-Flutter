import 'package:flutter/material.dart';
import 'package:your_app/components/Login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        child: Center(
          child: LoginWidget(),
        ),
      ),
    );
  }
}
