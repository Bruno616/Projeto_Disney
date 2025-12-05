import 'package:disney_bruno/Classe/api.dart';
import 'package:disney_bruno/Classe/personagem.dart';
import 'package:disney_bruno/creditos.dart';
import 'package:disney_bruno/main.dart';
import 'package:flutter/material.dart';

class PersonagemPage extends StatefulWidget {
  final int idperso;

  const PersonagemPage({super.key, required this.idperso});

  @override
  State<PersonagemPage> createState() => _PersonagemPageState();
}

class _PersonagemPageState extends State<PersonagemPage> {
  final Api api = Api();
  Personagem personagem = Personagem();

  void carregarPersonagem() async {
    personagem = await api.getCharacter(widget.idperso);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    carregarPersonagem();
  }

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
              child: Text("Créditos", style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(153, 233, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  "${personagem.imageUrl}",
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "${personagem.name}",
                        style: TextStyle(fontSize: 26),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Filmes: ${personagem.films?.join(", ")}",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Series: ${personagem.tvShows?.join(", ")}",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    Text("Atrações", style: TextStyle(fontSize: 20)),
                    Text(
                      "${personagem.parkAttractions?.join(", ")}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Text("VideoGames", style: TextStyle(fontSize: 20)),
                    Text(
                      personagem.videoGames?.join(", ") ?? "Não Possui",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
