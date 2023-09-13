import 'package:flutter/material.dart';
import 'package:prova_01/components/Consultas.dart';
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
  }): id = DateTime._maxMillisecondsSinceEpoch;
}

class ConsultasContext extends ChangeNotifier {
  List<Consultas> consultas = [];

  void adicionarConsultas(Consulta consulta) {
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
      create:(context) => ConsultasContext(),
      child: MaterialApp(
        home: ConsultasPage();
      )
    )
  );
}