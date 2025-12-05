import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_bruno/Classe/api.dart';
import 'package:disney_bruno/Classe/cardstyle.dart';
import 'package:disney_bruno/Classe/personagem.dart';
import 'package:disney_bruno/creditos.dart';
import 'package:disney_bruno/personagempage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late int pag, pagSize;
  Api api = Api();
  int indexLista = 0;
  List<Personagem> lista = List.empty();

  void listaPersonagens() async {
    lista = await api.getCharacters(pag, pagSize);
    setState(() {});
  }

  @override
  void initState() {
    pag = 1;
    pagSize = 100;
    listaPersonagens();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                child: Text("Home", style: TextStyle(color: Colors.black, fontSize: 16)),
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.asset("assests/logo.png"),
                  SizedBox(height: 20),
                  Text("Personagens", style: TextStyle(fontSize: 18)),
                  lista.isEmpty
                      ? CircularProgressIndicator()
                      : CarouselSlider.builder(
                          itemCount: lista.length ,
                          options: CarouselOptions(
                            height: 450,
                            viewportFraction: 0.6,
                            enlargeCenterPage: false,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                indexLista = index;
                              });
                            },
                          ),
                          itemBuilder: (context, index, realIndex) {
                            if (index == lista.length) {
                              return Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 137, 231, 238),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 6,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 40,
                                      color: Colors.blueAccent,
                                    ),
                                    onPressed: () async {
                                      pag++;
                                      await carregarNovaPagina();
                                    },
                                  ),
                                ),
                              );
                            }
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PersonagemPage(
                                      idperso: lista[index].iId ?? 10,
                                    ),
                                  ),
                                );
                              },
                              child: CardStyle(personagem: lista[index]),
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> carregarNovaPagina() async {
    final novaLista = await api.getCharacters(pag, pagSize);

    setState(() {
      lista = novaLista;
      indexLista = 0;
      pag++; 
    });
  }
}
