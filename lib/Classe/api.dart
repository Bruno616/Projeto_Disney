import 'dart:convert';
import 'package:disney_bruno/Classe/personagem.dart';
import 'package:http/http.dart' as http;

class Api {
  String baseUrl = "https://api.disneyapi.dev/character";

  Future<List<Personagem>> getCharacters(int page, int pageSize) async {
    final response = await http.get(
      Uri.parse("$baseUrl?page=$page&pageSize=$pageSize"),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['data'] as List)
          .map((json) => Personagem.fromJson(json))
          .toList();
    } else {
      return [];
    }
  }

  Future<List<Personagem>> getCharacterSrcName(String nome) async {
    final response = await http.get(Uri.parse("$baseUrl?name=$nome"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['data'] as List)
          .map((json) => Personagem.fromJson(json))
          .toList();
    } else {
      return [];
    }
  }

  Future<Personagem> getCharacter(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/$id"));
    final data = json.decode(response.body);
    return Personagem.fromJson(data["data"]);
  }
}
