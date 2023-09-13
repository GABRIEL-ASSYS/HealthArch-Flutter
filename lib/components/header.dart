import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/logo.png'),
          Row(
            children: [
              _buildMenuLink(context, 'Home', '/HomePage'),
              _buildMenuLink(context, 'Login', '/LoginPage'),
              _buildMenuLink(context, 'Consultas', '/ConsultasPage'),
              _buildMenuLink(context, 'Sobre', '/SobrePage'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuLink(BuildContext context, String text, String route) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
