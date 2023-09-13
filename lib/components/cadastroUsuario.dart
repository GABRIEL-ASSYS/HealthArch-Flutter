import 'package:flutter/material.dart';

class CadastroUsuarioScreen extends StatefulWidget {
  @override
  _CadastroUsuarioScreenState createState() => _CadastroUsuarioScreenState();
}

class _CadastroUsuarioScreenState extends State<CadastroUsuarioScreen> {
  String tipoCadastro = 'Cliente';
  String nome = '';
  String email = '';
  String senha = '';
  String telefone = '';
  String codigoRegional = '';

  void cadastrarUsuario() {
    if (tipoCadastro == 'Cliente') {
      // Lógica para cadastrar um cliente
      print('Cadastrando cliente: Nome: $nome, Email: $email, Senha: $senha, Telefone: $telefone');
    } else if (tipoCadastro == 'Profissional') {
      // Lógica para cadastrar um profissional
      print('Cadastrando profissional: Nome: $nome, Email: $email, Senha: $senha, Telefone: $telefone, Código Regional: $codigoRegional');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Container(
        color: Color(0xFF03989E),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Text(
                'Cadastro de Usuário',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF022C2F),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButton<String>(
                value: tipoCadastro,
                onChanged: (newValue) {
                  setState(() {
                    tipoCadastro = newValue!;
                  });
                },
                items: <String>['Cliente', 'Profissional'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Nome'),
                      onChanged: (value) {
                        setState(() {
                          nome = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Senha'),
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          senha = value;
                        });
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Telefone'),
                      onChanged: (value) {
                        setState(() {
                          telefone = value;
                        });
                      },
                    ),
                    if (tipoCadastro == 'Profissional')
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Código Regional'),
                        onChanged: (value) {
                          setState(() {
                            codigoRegional = value;
                          });
                        },
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: cadastrarUsuario,
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
