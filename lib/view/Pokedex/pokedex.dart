import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebla/mock/pokemon_data.dart';
import '../../model/pokemon.dart';
import 'pokemon_list.dart';

class PokedexView extends StatefulWidget {
  @override
  _PokedexViewState createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> {
  List<Pokemon> pokemons = PokemonData.mockPokemons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Pokedex'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PokemonList(this.pokemons),
          ),
        ],
      ),
    );
  }
}
