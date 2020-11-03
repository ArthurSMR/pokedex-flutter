import '../model/statistics.dart';
import '../model/pokemon_type.dart';

class Pokemon {
  String name;
  String imageURL;
  PokemonType type;
  Statistics statistics;

  Pokemon(
      String name, PokemonType type, String imageURL, Statistics statistics) {
    this.name = name;
    this.type = type;
    this.imageURL = imageURL;
    this.statistics = statistics;
  }
}
