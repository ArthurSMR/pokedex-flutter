import 'package:pokebla/model/pokemon.dart';

class PokemonData {
  static List<Pokemon> mockPokemons() {
    List<Pokemon> array = [];

    Pokemon pokemon1 = new Pokemon('Gábriel', 'Neandertal',
        'https://scontent.fcpq5-1.fna.fbcdn.net/v/t1.0-9/123001046_3406980296047328_9164537604018986081_o.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_ohc=KD1coJPVfIAAX-xD_Mi&_nc_ht=scontent.fcpq5-1.fna&oh=1c719a62897ba8dd78462bff2c8f128a&oe=5FBE8F43');
    array.add(pokemon1);

    Pokemon pokemon2 = new Pokemon('Árthur', 'Sindrome de Blah',
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png');
    array.add(pokemon2);

    return array;
  }
}
