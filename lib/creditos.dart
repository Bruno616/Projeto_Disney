import 'package:disney_bruno/main.dart';
import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  const Creditos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(116, 239, 255, 1),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainApp()),
                );
              },
              child: Text(
                "Home",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Creditos()),
                );
              },
              child: Text(
                "Créditos",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Color.fromRGBO(153, 233, 255, 1),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Créditos",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(height: 20),
                Text(
                  "Recursos Utilizados \n"
                  " API The Walt Disney API \n"
                  " utilizada para obter dados atualizados sobre filmes e personagens.",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 50),
                Text(
                  "Fonte oficial: https://api.disneyapi.dev",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  "Design e Protótipo Protótipo desenvolvido com base em interfaces Android. Elementos visuais inspirados em plataformas como Netflix e Disney+.",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  "Referências Técnicas \n "
                  "   - Documentação oficial da Disney API: https://disneyapi.dev/docs \n \n"
                  "   - Android Developers – referências para componentes de interface (RecyclerView, ImageView, TextView, ScrollView, Button).\n \n"
                  "   - MDN Web Docs – conceitos sobre APIs REST e consumo de dados em JSON.\n \n"
                  "   - W3Schools – referência para estruturação e estilo do front-end.",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  "Créditos Especiais \n"
                  "Agradecimentos à The Walt Disney Company por disponibilizar dados abertos que tornam o aprendizado e o desenvolvimento de aplicações educativas mais acessíveis e inspiradores. Lembrando que todos os personagens, nomes e imagens pertencem aos seus respectivos detentores de direitos autorais (© The Walt Disney Company).",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
