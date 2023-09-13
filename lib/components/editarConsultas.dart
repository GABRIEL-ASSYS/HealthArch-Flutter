import 'package:flutter/material.dart';
import 'package:your_app/contexts/consultas.dart';

class EditarConsultaPage extends StatefulWidget {
  @override
  _EditarConsultaPageState createState() => _EditarConsultaPageState();
}

class _EditarConsultaPageState extends State<EditarConsultaPage> {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController horaDataController = TextEditingController();
  TextEditingController nomeClienteController = TextEditingController();
  TextEditingController nomeProfissionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String idConsulta = ModalRoute.of(context).settings.arguments as String;
    final ConsultasContext consultasContext = ConsultasContext.of(context);

    final consulta = consultasContext.consultas
        .firstWhere((consulta) => consulta.id == idConsulta, orElse: () => null);

    if (consulta == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Editar Consulta'),
        ),
        body: Center(
          child: Text('Consulta não encontrada.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Consulta'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Color(0xFF03989E),
        child: ListView(
          children: [
            Text(
              'Consulta:',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF022C2F),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildTextField('Título', tituloController, consulta.titulo),
            _buildTextField('Descrição', descricaoController, consulta.descricao),
            _buildTextField('Data e Hora', horaDataController, consulta.horaData),
            _buildTextField('Nome do Cliente', nomeClienteController, consulta.nomeCliente),
            _buildTextField('Nome do Profissional', nomeProfissionalController, consulta.nomeProfissional),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                consultasContext.editarConsulta(consulta.id, {
                  'titulo': tituloController.text,
                  'descricao': descricaoController.text,
                  'horaData': horaDataController.text,
                  'nomeCliente': nomeClienteController.text,
                  'nomeProfissional': nomeProfissionalController.text,
                });
                Navigator.pop(context);
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, String initialValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF022C2F),
          ),
        ),
        TextField(
          controller: controller,
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF03989E)),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(12),
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
