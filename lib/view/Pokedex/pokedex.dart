import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../service/pokeapi_store.dart';
import 'pokemon_list.dart';

class PokedexView extends StatefulWidget {
  @override
  _PokedexViewState createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> {
  PokeApiStore pokeApiStore;
  @override
  void initState() {
    super.initState();
    pokeApiStore = PokeApiStore();
    pokeApiStore.fetchPokemonList();
  }

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
            child: Observer(
                name: "Pokedex",
                builder: (BuildContext context) {
                  return (pokeApiStore.pokeAPI != null)
                      ? PokemonList(this.pokeApiStore.pokeAPI.pokemon)
                      : Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.black,
                          ),
                        );
                }),
          ),
        ],
      ),
    );
  }
}
