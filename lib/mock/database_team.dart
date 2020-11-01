import '../model/pokemon.dart';

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

    Pokemon pokemon1 = new Pokemon('Rayquaza', 'Dragon',
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/384.png');
    team.add(pokemon1);
    Pokemon pokemon2 = new Pokemon('Blastoise', 'Water',
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png');
    team.add(pokemon2);
    Pokemon pokemon3 = new Pokemon('Raichu', 'Electric',
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png');
    team.add(pokemon3);
    return team;
  }
}
