import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:pokebla/model/pokeapiv2.dart';
part 'pokeapiv2_store.g.dart';

class PokeApiV2Store = _PokeApiV2StoreBase with _$PokeApiV2Store;

abstract class _PokeApiV2StoreBase with Store {
  String apiUrl = 'https://pokeapi.co/api/v2/pokemon/';

  @observable
  PokeApiV2 _pokeApiV2;

  @computed
  PokeApiV2 get pokeAPI => _pokeApiV2;

  @action
  fetchPokemonDetails(String pokemonName) {
    loadPokeAPI(pokemonName).then((pokeDetail) {
      _pokeApiV2 = pokeDetail;
    });
  }

  Future<PokeApiV2> loadPokeAPI(String pokemonName) async {
    try {
      print(apiUrl + pokemonName.toLowerCase());
      final response = await http.get(apiUrl + pokemonName.toLowerCase());
      var decodeJson = jsonDecode(response.body);
      return PokeApiV2.fromJson(decodeJson);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
