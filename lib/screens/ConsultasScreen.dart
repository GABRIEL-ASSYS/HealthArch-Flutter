import 'package:flutter/material.dart';
import 'package:prova_01/screens/AdicionarConsultaScreen.dart';

class ConsultasScreen extends StatefulWidget {
  @override
  _ConsultasScreenState createState() => _ConsultasScreenState();
}

class _ConsultasScreenState extends State<ConsultasScreen> {
  List<Map<String, dynamic>> consultas = [
    {
      'id': 1,
      'titulo': 'Consulta de Rotina',
      'descricao': 'Exame de rotina e verificação de saúde.',
      'horaData': '10/09/2023 09:00 AM',
      'nomeCliente': 'Maria Silva',
      'nomeProfissional': 'Dr. João'
    },
    {
      'id': 2,
      'titulo': 'Consulta Odontológica',
      'descricao': 'Limpeza e exame odontológico de rotina.',
      'horaData': '12/09/2023 02:30 PM',
      'nomeCliente': 'Pedro Oliveira',
      'nomeProfissional': 'Dra. Ana'
    },
    {
      'id': 3,
      'titulo': 'Consulta de Cardiologia',
      'descricao': 'Exame cardíaco e monitoramento.',
      'horaData': '15/09/2023 11:15 AM',
      'nomeCliente': 'Joana Santos',
      'nomeProfissional': 'Dr. Carlos'
    },
  ];

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
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Consultas:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Column(
                children: consultas.map((consulta) {
                  return Card(
                    elevation: 3.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
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
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  consultas.remove(consulta);
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
                      ],
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdicionarConsultaScreen()),
                  );
                },
                child: Icon(Icons.add),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
