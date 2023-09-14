import 'package:flutter/material.dart';

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

  void adicionarConsulta() {
    // Lógica para adicionar a consulta aqui
    // Pode ser semelhante à lógica em ConsultasScreen
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
            TextField(
              controller: tituloController,
              decoration: InputDecoration(
                labelText: 'Título:',
              ),
            ),
            TextField(
              controller: descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição:',
              ),
            ),
            TextField(
              controller: horaDataController,
              decoration: InputDecoration(
                labelText: 'Data e Hora:',
              ),
            ),
            TextField(
              controller: nomeClienteController,
              decoration: InputDecoration(
                labelText: 'Nome do Cliente:',
              ),
            ),
            TextField(
              controller: nomeProfissionalController,
              decoration: InputDecoration(
                labelText: 'Nome do Profissional:',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: adicionarConsulta,
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
