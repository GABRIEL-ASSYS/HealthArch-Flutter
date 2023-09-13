import 'package:flutter/material.dart';
import 'package:your_app/components/EditarConsulta.dart';

class EditarConsultasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Consultas Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            EditarConsultasWidget(),
          ],
        ),
      ),
    );
  }
}
