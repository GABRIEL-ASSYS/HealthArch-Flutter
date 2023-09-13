import 'package:flutter/material.dart';

class ContatoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: Container(
        color: Color(0xFF03989E),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Text(
                'Fale conosco:',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF022C2F),
                ),
              ),
              SizedBox(height: 20.0),
              ContatoItem(tipo: 'E-mail', valor: 'contato@HealthArch.com.br'),
              ContatoItem(tipo: 'Telefone', valor: '(42)99999-9999'),
              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF022C2F),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: WebView(
                  initialUrl:
                      'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7208.050354136493!2d-51.46951960734864!3d-25.4039781878216!2m3!1f0!2f0!3f0!3m2!1i024!2i768!4f13.1!3m3!1m2!1s0x94ef462cdc2f72fb%3A0xbe73a2c1e8973c98!2sCentro%20Universit%C3%A1rio%20Campo%20Real!5e0!3m2!spt-BR!2sbr!4v1662986268022!5m2!1spt-BR!2sbr',
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContatoItem extends StatelessWidget {
  final String tipo;
  final String valor;

  ContatoItem({required this.tipo, this.valor = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '$tipo: $valor',
        style: TextStyle(
          fontSize: 20.0,
          color: Color(0xFF022C2F),
        ),
      ),
    );
  }
}
