import 'package:pokebla/model/pokemon.dart';
import '../model/statistics.dart';
import '../model/pokemon_type.dart';

class PokemonData {
  static List<Pokemon> mockPokemons() {
    List<Pokemon> array = [];

    Pokemon pokemon1 = new Pokemon(
      'Rayquaza',
      PokemonType.Fire,
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/384.png',
      Statistics(
          hp: 100,
          attack: 40,
          defense: 10,
          special_atack: 35,
          special_defense: 70,
          speed: 42),
    );
    array.add(pokemon1);

    Pokemon pokemon2 = new Pokemon(
      'Blastoise',
      PokemonType.Water,
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png',
      Statistics(
          hp: 100,
          attack: 40,
          defense: 10,
          special_atack: 35,
          special_defense: 70,
          speed: 42),
    );
    array.add(pokemon2);

    return array;
  }
}
