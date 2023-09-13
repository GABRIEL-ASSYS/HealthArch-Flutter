import 'package:flutter/material.dart';

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