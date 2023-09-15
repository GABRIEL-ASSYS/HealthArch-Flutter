import 'package:flutter/material.dart';
import 'package:prova_01/screens/AdicionarConsultaScreen.dart';

class ConsultasScreen extends StatefulWidget {
  @override
  _ConsultasScreenState createState() => _ConsultasScreenState();
}

class _ConsultasScreenState extends State<ConsultasScreen> {
  List<Map<String, dynamic>> consultas = [];
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController horaDataController = TextEditingController();
  TextEditingController nomeClienteController = TextEditingController();
  TextEditingController nomeProfissionalController = TextEditingController();

  void adicionarConsulta() {
    setState(() {
      consultas.add({
        'id': consultas.length + 1,
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultas'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Consultas:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdicionarConsultaScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
