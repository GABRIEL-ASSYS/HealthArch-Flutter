import 'package:flutter/material.dart';
import 'package:your_app/resources/sobre_data.dart';
import 'package:your_app/resources/images.dart';

class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Container(
        color: Color(0xFF03989E),
        child: ListView(
          children: sobreData.map((item) => _buildSobreItem(item)).toList(),
        ),
      ),
    );
  }

  Widget _buildSobreItem(Map<String, dynamic> item) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Color(0xFF022C2F), width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          Text(
            item['titulo'],
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xFF022C2F),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              item['texto'],
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF022C2F),
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 16.0),
          if (item['imagem'] != null)
            Image.asset(
              item['imagem']['src'],
              alt: item['imagem']['alt'],
              width: 300,
            ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
