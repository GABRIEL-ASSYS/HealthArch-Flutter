import 'package:flutter/material.dart';
import 'package:nome_do_seu_app/screens/CadastroScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Digite seu Email',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Senha:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Digite sua Senha',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Entrar'),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastroScreen()),
                      );
                    },
                    child: Text('Ir para Cadastro'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
