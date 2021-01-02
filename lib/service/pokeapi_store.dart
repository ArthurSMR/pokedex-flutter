import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:pokebla/model/pokeapi.dart';
import 'package:http/http.dart' as http;
part 'pokeapi_store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  String pokeAPIUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  @observable
  PokeAPI _pokeAPI;

  @computed
  PokeAPI get pokeAPI => _pokeAPI;

  @action
  Future<bool> fetchPokemonList() async {
    _pokeAPI = await loadPokeAPI();
    return _pokeAPI != null ? Future.value(true) : Future.value(false);
  }

  @observable
  List<Pokemon> _pokeList;

  @computed
  List<Pokemon> get pokeList => _pokeList;

  @action
  Future<bool> getTeam(List<String> team) {
    if (pokeAPI == null) return Future.value(false);

    List<Pokemon> list = List<Pokemon>();
    team.forEach((pokemonName) {
      pokeAPI.pokemons.forEach((pokemon) {
        if (pokemon.name.toLowerCase() == pokemonName) {
          list.add(pokemon);
        }
      });
    });
    _pokeList = list;
    return Future.value(true);
  }

  Future<PokeAPI> loadPokeAPI() async {
    try {
      final response = await http.get(pokeAPIUrl);
      var decodeJson = jsonDecode(response.body);
      return PokeAPI.fromJson(decodeJson);
    } catch (error) {
      print("Erro ao carregar lista");
      return null;
    }
  }
}
