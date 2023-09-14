import 'package:flutter/material.dart';

class consultas_screen extends StatefulWidget {
  @override
  _consultas_screenState createState() => _consultas_screenState();
}

class _consultas_screenState extends State<consultas_screen> {
  List<Map<String, dynamic>> consultas = [];
  String titulo = '';
  String descricao = '';
  String horaData = '';
  String nomeCliente = '';
  String nomeProfissional = '';

  void adicionarConsulta() {
    setState(() {
      consultas.add({
        'id': consultas.length + 1,
        'titulo': titulo,
        'descricao': descricao,
        'horaData': horaData,
        'nomeCliente': nomeCliente,
        'nomeProfissional': nomeProfissional,
      });

      titulo = '';
      descricao = '';
      horaData = '';
      nomeCliente = '';
      nomeProfissional = '';
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
              decoration: InputDecoration(
                labelText: 'Título:',
              ),
              onChanged: (value) {
                setState(() {
                  titulo = value;
                });
              },
              value: titulo,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Descrição:',
              ),
              onChanged: (value) {
                setState(() {
                  descricao = value;
                });
              },
              value: descricao,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Data e Hora:',
              ),
              onChanged: (value) {
                setState(() {
                  horaData = value;
                });
              },
              value: horaData,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Cliente:',
              ),
              onChanged: (value) {
                setState(() {
                  nomeCliente = value;
                });
              },
              value: nomeCliente,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Profissional:',
              ),
              onChanged: (value) {
                setState(() {
                  nomeProfissional = value;
                });
              },
              value: nomeProfissional,
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
    );
  }
}
