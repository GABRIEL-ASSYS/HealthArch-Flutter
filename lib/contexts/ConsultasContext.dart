import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

class ConsultasContext extends ChangeNotifier {
  List<Consulta> consultas = [];

  void adicionarConsulta(Consulta consulta) {
    consultas.add(consulta);
    notifyListeners();
  }

  void excluirConsulta(int id) {
    consultas.removeWhere((consulta) => consulta.id == id);
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ConsultasContext(),
      child: MaterialApp(
        home: ConsultasPage(),
      ),
    ),
  );
}

class ConsultasPage extends StatelessWidget {
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
            // Restante do seu código para a página de consultas
          ],
        ),
      ),
    );
  }
}
