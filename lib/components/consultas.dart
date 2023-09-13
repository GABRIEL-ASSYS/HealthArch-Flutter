import 'package:flutter/material.dart';

class ConsultasPage extends StatefulWidget {
  @override
  _ConsultasPageState createState() => _ConsultasPageState();
}

class _ConsultasPageState extends State<ConsultasPage> {
  List<Consulta> consultas = [];
  String titulo = '';
  String descricao = '';
  String horaData = '';
  String nomeCliente = '';
  String nomeProfissional = '';

  void adicionarConsulta() {
    Consulta novaConsulta = Consulta(
      titulo: titulo,
      descricao: descricao,
      horaData: horaData,
      nomeCliente: nomeCliente,
      nomeProfissional: nomeProfissional,
    );
    setState(() {
      consultas.add(novaConsulta);
    });
  }

  void buscaConsulta() {
  }

  void excluirConsulta(int id) {
    setState(() {
      consultas.removeWhere((consulta) => consulta.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultas'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.blue[200],
        child: Column(
          children: [
            Text(
              'Consultas:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Título da Consulta'),
              onChanged: (value) {
                setState(() {
                  titulo = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: adicionarConsulta,
              child: Text('Cadastrar'),
            ),
            ElevatedButton(
              onPressed: buscaConsulta,
              child: Text('Buscar Consulta'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: consultas.length,
                itemBuilder: (context, index) {
                  Consulta consulta = consultas[index];
                  return Card(
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text('Título: ${consulta.titulo}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Descrição: ${consulta.descricao}'),
                          Text('Data e Hora: ${consulta.horaData}'),
                          Text('Nome do Cliente: ${consulta.nomeCliente}'),
                          Text('Nome do Profissional: ${consulta.nomeProfissional}'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          excluirConsulta(consulta.id);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Consulta {
  final int id;
  final String titulo;
  final String descricao;
  final String horaData;
  final String nomeCliente;
  final String nomeProfissional;

  Consulta({
    required this.titulo,
    required this.descricao,
    required this.horaData,
    required this.nomeCliente,
    required this.nomeProfissional,
  }) : id = DateTime.now().millisecondsSinceEpoch;
}

void main() {
  runApp(MaterialApp(
    home: ConsultasPage(),
  ));
}
