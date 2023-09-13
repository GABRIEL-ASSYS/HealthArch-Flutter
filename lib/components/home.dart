import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Colors.blue[200],
        child: ListView.builder(
          itemCount: homeData['home'].length,
          itemBuilder: (context, index) {
            final item = homeData['home'][index];
            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text(item['titulo'],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['texto'],
                        style: TextStyle(fontSize: 16)),
                    if (item['imagem'] != null)
                      Image.network(
                        item['imagem']['src'],
                        alt: item['imagem']['alt'],
                      ),
                    if (item['videoSrc'] != null)
                      SizedBox(
                        height: 200,
                        child: WebView(
                          initialUrl: item['videoSrc'],
                          javascriptMode: JavascriptMode.unrestricted,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

final Map<String, dynamic> homeData = {
  "home": [
    {
      "titulo": "Gostaria de otimizar algumas funções administrativas de seu consultório ?",
      "texto":
          "Já pensou que algumas funções administrativas de seu consultório ou clínica podem ser otimizadas, economizando assim tempo e recursos, sem falar em uma maior agilidade. A HealthArch pensou em algumas formas de facilitar o trabalho dos profissionais da área da saúde, médicos, dentistas, nutricionistas, psicólogos, recepcionistas, clientes, etc. Já pensou em facilitar a forma de agendar horários, prescrever receitas e ter um contato maior com os pacientes? Se sua resposta for sim, venha conosco transformar a saúde em uma área mais automatizada e tecnológica.",
      "imagem": {
        "src": "https://example.com/imagens/home/clinica.jpg",
        "alt": "Imagem de uma clínica"
      }
    },
    {
      "titulo": "Quais as vantagens de utilizar o HealthArch ?",
      "texto":
          "As principais vantagens de utilizar a HealthArch são, ter um contato maior com seus pacientes, podendo entrar em contato mais facilmente, acompanhar como anda a recuperação e o uso dos remédios, a HealthArch também oferece uma maior facilidade para agendamento de consultas e manejo de horários, sendo que o próprio paciente pode cancelar a consulta. Também oferecemos um controle de estoque para remédios e insumos, para que o profissional possa entender as necessidades de suprimentos de sua clínica ou consultório.",
      "imagem": {
        "src": "https://example.com/imagens/home/imagem-clinica.jpeg",
        "alt": "Imagem de uma clínica"
      }
    },
    {
      "titulo": "Àrea da saúde - uma inovação social:",
      "videoSrc": "https://www.youtube.com/embed/FLBgkGEmoR0"
    }
  ]
};
