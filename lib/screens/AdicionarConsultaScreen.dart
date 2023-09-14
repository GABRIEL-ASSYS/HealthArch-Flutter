import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdicionarConsultaScreen extends StatefulWidget {
  @override
  _AdicionarConsultaScreenState createState() => _AdicionarConsultaScreenState();
}

class _AdicionarConsultaScreenState extends State<AdicionarConsultaScreen> {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController horaDataController = TextEditingController();
  TextEditingController nomeClienteController = TextEditingController();
  TextEditingController nomeProfissionalController = TextEditingController();

  void adicionarConsulta() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('consultas').add({
      'titulo': tituloController.text,
      'descricao': descricaoController.text,
      'horaData': horaDataController.text,
      'nomeCliente': nomeClienteController.text,
      'nomeProfissional': nomeProfissionalController.text,
    });

    tituloController.clear();
    descricaoController.clear();
    horaDataController.clear();
    nomeClienteController.clear();
    nomeProfissionalController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Consulta'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Adicionar Consulta:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
