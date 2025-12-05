class Personagem {
  int? iId;
  List<String>? films;
  List<String>? shortFilms;
  List<String>? tvShows;
  List<String>? videoGames;
  List<String>? parkAttractions;
  List<String>? allies;
  List<String>? enemies;
  String? sourceUrl;
  String? name;
  String? imageUrl;

  Personagem(
      {this.iId,
      this.films,
      this.shortFilms,
      this.tvShows,
      this.videoGames,
      this.parkAttractions,
      this.allies,
      this.enemies,
      this.sourceUrl,
      this.name,
      this.imageUrl,
      });

  Personagem.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    films = json['films'].cast<String>();
    shortFilms = json['shortFilms'].cast<String>();
    tvShows = json['tvShows'].cast<String>();
    videoGames = json['videoGames'].cast<String>();
    parkAttractions = json['parkAttractions'].cast<String>();
    allies = json['allies'].cast<String>();
    enemies = json['enemies'].cast<String>();
    sourceUrl = json['sourceUrl'];
    name = json['name'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.iId;
    data['films'] = this.films;
    data['shortFilms'] = this.shortFilms;
    data['tvShows'] = this.tvShows;
    data['videoGames'] = this.videoGames;
    data['parkAttractions'] = this.parkAttractions;
    data['allies'] = this.allies;
    data['enemies'] = this.enemies;
    data['sourceUrl'] = this.sourceUrl;
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}