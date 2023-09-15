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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Consulta'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Adicionar Consulta:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16.0),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tituloController,
                        decoration: InputDecoration(labelText: 'Título'),
                      ),
                      TextFormField(
                        controller: descricaoController,
                        decoration: InputDecoration(labelText: 'Descrição'),
                      ),
                      TextFormField(
                        controller: horaDataController,
                        decoration: InputDecoration(labelText: 'Data e Hora'),
                      ),
                      TextFormField(
                        controller: nomeClienteController,
                        decoration: InputDecoration(labelText: 'Nome do Cliente'),
                      ),
                      TextFormField(
                        controller: nomeProfissionalController,
                        decoration: InputDecoration(labelText: 'Nome do Profissional'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: ElevatedButton(
                    onPressed: adicionarConsulta,
                    child: Text('Cadastrar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
