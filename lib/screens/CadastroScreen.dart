import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuarioState createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  String tipoCadastro = 'Cliente';
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController codigoRegionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF03989E),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButton<String>(
                  value: tipoCadastro,
                  onChanged: (String newValue) {
                    setState(() {
                      tipoCadastro = newValue;
                    });
                  },
                  items: <String>['Cliente', 'Profissional']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Cadastro como $tipoCadastro',
                  style: TextStyle(fontSize: 24.0, color: Colors.black),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: telefoneController,
                  decoration: InputDecoration(labelText: 'Telefone'),
                  keyboardType: TextInputType.phone,
                ),
                if (tipoCadastro == 'Profissional')
                  TextFormField(
                    controller: codigoRegionalController,
                    decoration: InputDecoration(labelText: 'Código Regional'),
                  ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    String nome = nomeController.text;
                    String email = emailController.text;
                    String senha = senhaController.text;
                    String telefone = telefoneController.text;
                    String codigoRegional =
                        tipoCadastro == 'Profissional' ? codigoRegionalController.text : '';

                    nomeController.clear();
                    emailController.clear();
                    senhaController.clear();
                    telefoneController.clear();
                    if (tipoCadastro == 'Profissional') {
                      codigoRegionalController.clear();
                    }
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
