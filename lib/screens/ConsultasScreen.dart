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
            SizedBox(height: 16.0),
            Text(
              'Lista de Consultas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: consultas.length,
              itemBuilder: (context, index) {
                final consulta = consultas[index];
                return Card(
                  elevation: 3.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Text('ID: ${consulta['id']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Título: ${consulta['titulo']}'),
                        Text('Descrição: ${consulta['descricao']}'),
                        Text('Data e Hora: ${consulta['horaData']}'),
                        Text('Nome do Cliente: ${consulta['nomeCliente']}'),
                        Text('Nome do Profissional: ${consulta['nomeProfissional']}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              consultas.removeAt(index);
                            });
                          },
                          child: Text('Excluir'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                          },
                          child: Text('Editar'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdicionarConsultaScreen())
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
