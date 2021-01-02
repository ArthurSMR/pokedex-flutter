import '../model/pokemon.dart';
import '../model/statistics.dart';
import '../model/pokemon_type.dart';

class Team {
  static List<String> mockPostTeam() {
    List<String> team = [];

    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/395.png");
    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png");
    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/383.png");
    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/172.png");
    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png");
    team.add(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/382.png");

    return team;
  }

  static List<Pokemon> mockProfileTeam() {
    List<Pokemon> team = [];

    Pokemon pokemon1 = new Pokemon(
      'Rayquaza',
      PokemonType.Fire,
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/384.png',
      Statistics(
          hp: 100,
          attack: 40,
          defense: 10,
          specialAttack: 35,
          specialDefense: 70,
          speed: 42),
    );
    team.add(pokemon1);

    Pokemon pokemon2 = new Pokemon(
      'Blastoise',
      PokemonType.Water,
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png',
      Statistics(
          hp: 100,
          attack: 40,
          defense: 10,
          specialAttack: 35,
          specialDefense: 70,
          speed: 42),
    );
    team.add(pokemon2);

    Pokemon pokemon3 = new Pokemon(
      'Raichu',
      PokemonType.Fire,
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png',
      Statistics(
          hp: 100,
          attack: 40,
          defense: 10,
          specialAttack: 35,
          specialDefense: 70,
          speed: 42),
    );
    team.add(pokemon3);
    return team;
  }
}
